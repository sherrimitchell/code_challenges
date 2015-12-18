# RACING CHARS
# CHALLENGE DESCRIPTION:

# You are given a file where each line is a section of a race track with obstructions, gates, and checkpoints. Your task is to find a way to pass this track using the following information:

# 1. Each section contains either one single gate or one gate with a checkpoint. 
# 2. You should drive only through gates or checkpoints. 
# 3. You should drive through a checkpoint rather than a gate. 
# 4. An obstruction is represented by a number sign "#". 
# 5. A gate is represented by an underscore "_". 
# 6. A checkpoint is represented by a letter C.

# INPUT SAMPLE:

# Your program should accept a path to a filename as its first argument. Each line of the file is a new section of a race track.
# 1 #########_## 10 -- 12-2 prev_line = 0 
# 2 ########C_## 9     12-3 prev_line = 10 
# 3 #######_#### 8     12-4
# 4 ######_#C### 9     12-3
# 5 #######_C### 9     12-3
# 6 #######_#### 8     12-4
# 7 ######C#_### 7     12-5
# 8 ######C_#### 7     12-5
# 9 #######_#### 8     12-4
# 10 #######_#### 8    12-4
# OUTPUT SAMPLE:

# Print out the way of passing this race track starting from the first line in the file. Use a pipe "|" for the straight, use a slash "/" for the left turn, and use a backslash "\" for the right turn.


# 1 #########|##
# 2 ########/_##
# 3 #######/####
# 4 ######_#\###
# 5 #######_|###
# 6 #######/####
# 7 ######/#_###
# 8 ######|_####
# 9 #######\####
# 10 #######|####

# CONSTRAINTS:

# The number of lines in a file is 50.
# The width of a section is 12 characters.

# number of lines in file = 50 - max number of moves
# moves = 50
# total characters is 50 X 12 = 600
# each line is 12 characters; line = section; section contains gate | gate + checkpoint
# if char = #, then no move; if gate | gate + checkpoint then move
# "_" = gate
# C = checkpoint
# if previous line does not contain "C" and line contains "_" only, then direction is "|"
# if previous line contains "C" and next line contains "_" and line.index is < 
# if line contains "_" and C then select C
# if next line position == line position of previous move then "|", if line position < previous line position then "/", if line postion is > previous line postion then "\"
# right_turn == "\"; left_turn == "/"
# 

# if line contains a checkpoint then 

require 'pry'

# max_moves == 50

# move = move.to_i

# move_count = move + 1

# section = line

# until move = max_moves
# each_line.split
  
filename = ARGV[0] || 'test1.txt'

lines = File.open(filename).map(&:chomp)
 
 section = lines[0]
 path = section.index('C') || section.index('_') 

 lines.each do |line|
  way = line.index('C') || line.index('_')
  case path <=> way
  when -1
    line[way] = "\\"
  when 0
    line[way] = "|"
  when 1
    line[way] = "/"
  end
  puts line
  section = line
  path = way
end
