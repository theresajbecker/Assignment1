def combined_anagrams(wordList)

	anaHash ={}

	wordList.each do |i|
	if(anaHash.has_key?(i.downcase.chars.sort.join))
		anaHash[i.downcase.chars.sort.join].push(i)
	else anaHash = anaHash.merge(i.downcase.chars.sort.join =>[i])
	end
	end

	return anaHash.values
end

wordList = ["we", "pee", "star", "rats", "ew", "epe"]

p combined_anagrams(wordList) 

#worked with Erik K
