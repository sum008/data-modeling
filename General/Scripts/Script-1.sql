create type vertex_type as enum('player', 'team', 'game');

create table vertices (
	identifier text,
	type vertex_type,
	properties json,
	primary key (identifier,
type)
);

create type edge_type as enum (
	'plays_against',
	'shares_tean',
	'plays_in',
	'plays_on'
);

create table edges (
	subject_identifier text,
	subject_type vertex_type,
	object_identifier text,
	object_type vertex_type,
	edge_type edge_type,
	properties json,
	primary key (subject_identifier,
subject_type,
object_identifier,
object_type,
edge_type)
);

insert
	into
	vertices
select 
	game_id as identifier,
	'game'::vertex_type as type,
	json_build_object(
		'pts_home', pts_home,
		'pts_away', pts_away,
		'winning_team', case when home_team_wins = 1 then home_team_id else visitor_team_id end
	) as properties
from
	games;

insert
	into
	vertices
with player_agg as (
	select
		player_id as identifier,
			max(player_name) as player_name,
			count(1) as number_of_games,
			sum(pts) as total_points,
			array_agg(distinct team_id) as teams
	from
		game_details
	group by
		player_id
)
select
	identifier,
	'player'::vertex_type,
		json_build_object(
			'player_name', player_name,
			'number_of_games', number_of_games,
			'total_points', total_points,
			'teams', teams
		)
from
	player_agg;

insert
	into
	vertices
with deduped_teams as (
	select
		*,
		row_number() over (partition by team_id) as row_num
	from
		teams
)
select
	team_id as identifier,
	'team'::vertex_type as type,
	json_build_object(
		'abbreviation', abbreviation,
		'nickname', nickname,
		'city', city,
		'arena', arena,
		'year_founded', yearfounded
	) as properties
from
	deduped_teams
where
	row_num = 1;

insert
	into
	edges
with deduped_game_details as (
	select
		*,
		row_number() over (partition by player_id,
		game_id) as row_num
	from
		game_details
)
select
	player_id as subject_identifier,
	'player'::vertex_type as subject_type,
	game_id as object_identifier,
	'game'::vertex_type as object_type,
	'plays_in'::edge_type as edge_type,
	json_build_object(
		'start_position', start_position,
		'pts', pts,
		'team_id', team_id,
		'team_abbreviation', team_abbreviation
	) as properties
from
	deduped_game_details
where
	row_num = 1;

select
	*
from
	vertices v
where
	type = 'team';