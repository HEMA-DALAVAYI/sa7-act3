'''
Problem 2: Text-Based Game Score Tracker
Objective: Create a text-based game where players
move through rooms collecting points.
 Implement a score tracker that records the total points collected
 by the player.
Task: Design a Ruby script for a game with three rooms.
Each room has a certain number of points
 (e.g., Room 1: 5 points, Room 2: 10 points, Room 3: 15 points).
  The player starts with 0 points.
  Prompt the player to enter which room they want to enter next based
  on a simple text menu. Add the rooms points to the players total s
  core each time they enter a room. The game ends when the player chooses to exit.
   Display the total points collected when the game ends.
'''
puts "Welcome to the Adventure Game!"
puts "You have 0 points."

total_score = 0

loop do
  puts "Choose a room (1-3) to enter or 'exit' to end the game: 1"
  room = gets.chomp
  if room == '1'
    total_score += 5
    puts "You entered Room 1 and earned 5 points."
  elsif room == '2'
    total_score += 10
    puts "You entered Room 2 and earned 10 points."
  elsif room == '3'
    total_score += 15
    puts "You entered Room 1 and earned 5 points."
  elsif room == 'exit'
   puts "Game over! You collected a total of #{total_score} points."
    break
  else
    puts "Invalid option, no points added, choose between 1-3 or press 'exit' to quit the game"

  end
end
