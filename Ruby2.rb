#2 Palindrome 


def palindrome?(string)
	
    string.gsub!(/[\W\d]/,"") # gsub! permanently replaces the changes made in the string. \W removes nonword charachters (including white space) and \d removed decimals/digits and replaces them with nothing, subsequently editing the word together. 
	string.downcase==string.downcase.reverse #compares the lowercase version of the string with the lowercase version of the reverse string and returns true if it's a palindrome. 	
end

p palindrome?("A man, a plan, a canal: Panama.")
p palindrome?("A man, a plan, a canal: Panama.")
p palindrome?("A man, a plan, a canal: Panama.")

