# FIZZ BUZZ
# CHALLENGE DESCRIPTION:

# Players generally sit in a circle. The first player says the number “1”, and each player says next number in turn. 
# However, any number divisible by X (for example, three) is replaced by the word fizz, and any divisible by Y (for example, five) by the word buzz. 
# Numbers divisible by both become fizz buzz. A player who hesitates, or makes a mistake is eliminated from the game.

# Write a program that prints out the final series of numbers where those divisible by X, Y and both are replaced by “F” for fizz, “B” for buzz and “FB” for fizz buzz.

# INPUT SAMPLE:

# Your program should accept a file as its first argument. The file contains multiple separated lines; each line contains 3 numbers that are space delimited. 
# The first number is the first divider (X), the second number is the second divider (Y), and the third number is how far you should count (N). 
# You may assume that the input file is formatted correctly and the numbers are valid positive integers.

# For example:

# 3 5 10
# 2 7 15
# OUTPUT SAMPLE:

# Print out the series 1 through N replacing numbers divisible by X with “F”, numbers divisible by Y with “B” and numbers divisible by both with “FB”. 
# Since the input file contains multiple sets of values, your output should print out one line per set. 
# Ensure that there are no trailing empty spaces in each line you print.

# 1 2 F 4 B F 7 8 F B
# 1 F 3 F 5 F B F 9 F 11 F 13 FB 15
# CONSTRAINTS:

# The number of test cases ≤ 20
# "X" is in range [1, 20]
# "Y" is in range [1, 20]
# "N" is in range [21, 100]

filename = ARGV[0] || 'fb_test.txt'

File.open(filename, "r").each_line do |line|

  numbers = line.split

  x = numbers.at(0).to_i
  y = numbers.at(1).to_i
  n = numbers.at(2).to_i

  (1..n).each do |num|
    if num % x == 0 && num % y != 0
      print "F"
    end
    if num % y == 0 && num % x != 0
      print "B"
    end
    if num % x == 0 && num % y == 0
      print "FB"
    end
    if num % x != 0 && num % y != 0
      print num
    end
    print ' '
  end
  puts
end


