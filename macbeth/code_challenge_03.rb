filename = ARGV[0] || 'Macbeth.txt'
words_total = Hash.new(0)

text = File.open(filename, "r").each_line do |line|

	
	text = line.gsub(/[,\.\?:;!\[\]"\-{2}]/, ' ').delete("'s").downcase.split

	words = text.keep_if { |word| word.length > 5 }
	 
	words.each do |word|
		if words_total[word]
			words_total[word] += 1
		else
	      words_total[word] = 1
	    end
	  end


words_total.sort_by {|x,y| y }.reverse.each {|x, y| puts x+' '+y.to_s}
end


### Macbeth 285, Macduff 107