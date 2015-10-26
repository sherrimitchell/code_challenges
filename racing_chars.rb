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
# 1 #########_##
# 2 ########C_##
# 3 #######_####
# 4 ######_#C###
# 5 #######_C###
# 6 #######_####
# 7 ######C#_###
# 8 ######C_####
# 9 #######_####
# 10 #######_####
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

require 'pry'

# max_moves == 50

# move = move.to_i

# move_count = move + 1

# section = line

# until move = max_moves
  
filename = ARGV[0] || 'test1.txt'

# def new_dir(prev_line, index)
#   dir = nil
#   if index < prev_line
#     dir = left_turn
#   elsif index == prev_line
#     dir = straight
#   else
#     dir = right_turn
#   end
#   dir
# end

lines = File.open(filename, "r").each_line do |line| 
  line.empty?
  line.next

# binding.pry

  puts line.strip.split(',').map.with_index { |line, i| 

    
    

    right = "\\"

    left = "/"

    straight = "|"

    gate = line.index('_')
    check_point = line.index('C')
    direction = straight
    prev_line = nil
    if prev_line = nil?
      prev_line = gate
    elsif condition
      
    end



    

    
    

    prev_line, next_line = line[i], line[i + 1 ]
    prev_pos = prev_line.index(/\/|\||\\/)

    right = next_line ? next_line[prev_pos + 1] : nil

    left = next_line ? next_line[prev_pos - 1] : nil

    straight = next_line ? next_line[prev_pos] : nil
    
    


   if left == check_point
    next_line[check_point] = '/'
    elsif straight == check_point
      next_line[check_point] = '|'
    elsif right == check_point
      next_line[check_point] = '\\'
    elsif left == gate
      next_line[gate] = '/'
    elsif straight == '_'
      next_line[gate] = '|'
    elsif right == gate
      next_line[gate] = '\\'
   end

      a << current_line
      print a }
    end
        

#     if prev_line.nil?
#       move = gate
#       direction = straight
#       prev_line = gate
#     else check_point? < prev_line = gate ? direction = left : check_point? == prev_line = check_point ? direction = straight : direction = right
#     binding.pry 
#     print line 
#   end
# } 
# end
#   right = "\\"

#     left = "/"

#     straight = "|"

 




