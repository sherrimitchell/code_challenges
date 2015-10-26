require 'pry'

filename = ARGV[0] || 'Macbeth.txt'
words_total = Hash.new(0)

File.open(filename, "r").each_line do |line|

	line.delete!(".,?:;!'")

	# unless line.length < 5

	# line.delete!(".,?:;!")

	words = line.downcase.split(" ").keep_if { |word| word.length > 5 }
	 
	

	
	words.each do |word|
		if words_total[word]
			words_total[word] += 1
		else
	      words_total[word] = 1
	    end
	  end


# words_dup = words_total

# words_total.merge(words_dup){ |a, b, c| b + c }
	

words_total.to_a.sort {|a, b| a[1] <=> b[1] }.each { |elem| 
	puts "\"#{elem[0]}\"  #{elem[1]} "} 
end

### This version will print out the totals, but does not total each paragraph.