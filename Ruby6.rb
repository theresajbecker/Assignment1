def glob_match(filename, pattern)
	return filename.select{|i| i.match(/#{pattern}/)}
	end



#*: matches zero or more characters,

#?: marks the preceding character optional,

#[abc]: matches a, b, or c
testing = ['part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~', 'ppart31.rb', 'purt2.rd']
pattern = '*part*rb?*'.gsub!("*", ".*")

p glob_match(testing, pattern)

               # ==> [“part2.rb~”, “.part3.rb.un~”]

#worked with Erik Kierstead 
