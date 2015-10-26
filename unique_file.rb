=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
# Do something with line, ignore empty lines
#...
end
=end

# You are given a sorted list of numbers with duplicates. Print out the sorted list with duplicates removed.

# INPUT SAMPLE:

# File containing a list of sorted integers, comma delimited, one per line. E.g. 

# 1
# 2
# 1,1,1,2,2,3,3,4,4
# 2,3,4,5,5
# OUTPUT SAMPLE:

# Print out the sorted list with duplicates removed, one per line. 
# E.g.1,2,3,4
# 2,3,4,5

# File.open(ARGV[0], "r").each_line do |line|
# 		line.empty?
# 		line.split.uniq

# 		puts line
# 		end


require 'pry'

filename = ARGV[0] || 'test.txt'

lines = File.open(filename, "r").each_line do |line| 
	line.empty?
	line.next

	puts line.strip.split(',').uniq.map { |line| line.to_i }.join(",")

	print lines
end