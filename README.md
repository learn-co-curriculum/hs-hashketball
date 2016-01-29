# Hashketball

## Overview

Tomorrow, you'll be learning all about Application Programming Interfaces, or APIs. APIs are how applications communicate with each other over the iternet - it's why Yelp can have a Google Map showing restaurant locations and those restaurants can display all of the latest tweets about them on their page. 

Many of the APIs we'll be working with send us data in the form of nested arrays and hashes. Being comfortable iterating through nested data structures will make your life WAY easier. 

## Instructions

We've gotten a bunch of data from the Yahoo Sports API. There is a nested hash in `game_hash.rb` that defines a game, with two teams, their players, and the players stats.

Using the power of Ruby, and the game hash in `game_hash.rb`, write methods to complete the following:

1. Return the name of the home team and the away team. We've done this one for you to get started.

2. Return a team's colors.

3. Returns the array of players with all of their stats.

4. Print out the points scored by each player on a team.

4. Return all the stats for a player, given a player's team and name. Hint: The .find method will be helpful (it works a little like .each).

5. Return a player's shoe size. Hint: try finding the player first (the same way you did with `player_stats`) then look for his shoe size.

6. Return the number of slam dunks for a player.

7. Return the number of slam dunks for the team player with the largest shoe size.


**Bonus Questions:**

Define methods to return the answer to the following questions:

1. Which player scored the most points?

2. Which team scored the most points?

3. Which player has the longest name?

**Super Bonus:**

1. Write a method that returns true if the player with the longest name had the most steals. Call the method `long_name_steals_a_ton?`.

## Resources
* [Codecademy](http://www.codecademy.com/dashboard) - [A Night at the Movies](http://external.codecademy.com/courses/ruby-beginner-en-0i8v1/0/1)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/hs-hashketball' title='Hashketball'>Hashketball</a> on Learn.co and start learning to code for free.</p>
