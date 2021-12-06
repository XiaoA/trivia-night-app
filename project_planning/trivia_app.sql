DROP DATABASE IF EXISTS react_trivia_app;

CREATE DATABASE react_trivia_app;

\c react_trivia_app

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(30) UNIQUE NOT NULL,
  password_hashed VARCHAR(264) NOT NULL,
  password_confirmation_hashed VARCHAR(264) NOT NULL
 );
 
CREATE TABLE user_profiles (
  id SERIAL PRIMARY KEY,
  username VARCHAR(15) UNIQUE NOT NULL,
  first_name VARCHAR(15),
  last_name VARCHAR(15),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  team_name VARCHAR(15)
);

CREATE TABLE team_members (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  team_id INTEGER REFERENCES teams(id) ON DELETE CASCADE
);

CREATE TABLE team_rankings (
  id SERIAL PRIMARY KEY,                        
  team_id INTEGER REFERENCES teams(id) ON DELETE CASCADE,       
  team_wins INTEGER REFERENCES teams(id) ON DELETE CASCADE,
  team_losses INTEGER REFERENCES teams(id) ON DELETE CASCADE                    
);

CREATE TABLE games (
  id SERIAL PRIMARY KEY,
  team_id INTEGER REFERENCES teams(id) ON DELETE CASCADE,
  game_date date NOT NULL,
  game_time time with time zone NOT NULL,
)

INSERT INTO users
(id, email, password_hashed, password_confirmation_hashed)
  VALUES
  (1, 'sherlock@example.com', '$2b$14$dPp4ixbBXumqb;zW-C2*m*9J]SV@.A3U-xk', '$2b$14$dPp4ixbBXumqb;zW-C2*m*9J]SV@.A3U-xk'),
  (2, 'batman@example.com', '$2b$14YDTrPn/=jD4%.;K%qSD4[$C&TA%U4*enQ3L', '$2b$14YDTrPn/=jD4%.;K%qSD4[$C&TA%U4*enQ3L');

INSERT INTO user_profiles
(id, username, first_name, last_name, user_id)
  VALUES
  (1, 'sherlock99', 'Sherlock', 'Holmes', 1),
  (2, 'batman4u', 'Bruce', 'Wayne', 2);
 
INSERT INTO teams
(id, team_name)
  VALUES
  (1, "Team 1"),
  (2, "Team 2");

INSERT INTO team_members
(id, user_id, team_id)
  VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 1, 2),
  (4, 2, 1);
  
INSERT INTO team_rankings
(id, team_id, team_wins, team_losses)
  VALUES
  (1, 1, 14, 3),
  (2, 2, 6, 9);
