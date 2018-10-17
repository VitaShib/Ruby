def polindrome_check (string)
	if string.reverse == string
		puts "#{ string } is a polindrome"
	else #
		puts "#{ string } isn`t a polindrome"
	end
end

print "Enter the string`s value\n"
word = gets.chomp
polindrome_check(word)
