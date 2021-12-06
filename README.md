# Trivia Night Game

## Introduction
My friends and I love to play trivia, but even before the pandemic, we found it hard to arrange our schedules to play in person. This game makes it easy for anyone to play trivia online, alone or with friends.

## External APIs and Libraries
- **Open Trivia DB:** https://opentdb.com - A free, user-contributed database of trivia questions, with over 14,500 questions.
- **Zoom API, for user interaction:** https://marketplace.zoom.us/docs/sdk/native-sdks/web/build
- **Toast UI, for users/teams to schedule games:** https://ui.toast.com

## Features
- Users can join for free, and create teams to challenge their knowledge with over 14,500 questions.
- Players can choose from a large number of categories, with different levels of difficulty, and a range of 1-50 questions per game.
- Users can interact schedule games and invite friends.
- Teams can view their win/loss rankings on a global leaderboard.
- Team members can interact over live video chat, inside the game.
- 

## User Flow
- Home Page
  - Sample Game: New Users can try a sample question, to decide if they would like to join.
  - Register: New users can join for free.
  - Sign In: Returning users can log in.
- User Dashboard
  -  After authentication, users will be taken to a dashboard page, where they will have the option to play game, schedule a future game, or view their stats.
    - Start a game
      1. Users can choose the number of questions
      2. Users can then choose from set of categories
      3. Users are prompted to choose a difficulty level (easy, medium, or hard)
    - Schedule future games
      - Users can schedule future games 
    - View Stats
        - Users can view their ranking of wins/losses on the Leaderboard

## Core Technology Stack
- Front End: React
- Back End: Express.js, Postgresql
