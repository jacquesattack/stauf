#!/usr/bin/env ruby

=begin
the stauf painting puzzle from the 7th guest is a real pain to solve, and I really have no intuition when it comes to the logic involved.

instead of just clicking randomly and blowing up my wrist, I decided to let the computer do that!

so, there are 9 boxes in a 3x3 square. There are three colors on the square (red, green, and clear), and the goal is to get all 9 boxes to be clear colored.

Clicking on boxes changes certain other adjacent boxes by 1 color.

0 1 2
3 4 5
6 7 8

=end

CHANGES = {0 => [0,1,3,4],
           1 => [0,1,2],
           2 => [1,2,4,5],
           3 => [0,3,6],
           4 => [1,3,4,5,7],
           5 => [2,5,8],
           6 => [3,4,6,7],
           7 => [6,7,8],
           8 => [4,5,7,8] }

$init_puzzle = [1,1,1,
                1,1,1,
                1,1,2]

def solved?(puzzle) # array
  return puzzle.all? {|val| val == 0}
end

def push_block(move,puzzle)
  changed_blocks = CHANGES[move]
  changed_blocks.each {|c| puzzle[c] = next_color(puzzle[c])}
  return puzzle
end

def next_color(color)
  if color == 0 then return 1 end
  if color == 1 then return 2 end
  if color == 2 then return 0 end
end

puzzle = Array.new($init_puzzle)
$moves = []

puts "Initial puzzle: #{puzzle.join(",")}"

while(!solved?(puzzle))
  # choose a new block to push
  move = (rand*9).to_i
  $moves.push(move+1)
  #puts "Pushed #{move}."
  # make the move
  puzzle = push_block(move,puzzle)
  if puzzle == $init_puzzle
    $moves = []
  end

  if $moves.size > 20
    $moves = []
    puzzle = Array.new($init_puzzle)
  end
end

puts "Moves to solve: #{$moves.join(",")}"
puts "Number of moves required: #{$moves.size}"
puts "Solution: #{puzzle.join(",")}"
