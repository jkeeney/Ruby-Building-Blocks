def caesar_cipher(string, shift)

	newstring = string.gsub(/[A-z]/) do |letter|
		if letter.ord.between?("A".ord, "Z".ord)
			x = letter.ord + shift
			x -= 26 if x > "Z".ord
			letter = x.chr
		else
			x = letter.ord + shift
			x -= 26 if x > "z".ord
			letter = x.chr
		end
	end

	puts newstring

end

puts "Enter your string:"
user_string = gets.chomp
puts "Enter the shift factor:"
user_shift = gets.chomp.to_i

caesar_cipher(user_string, user_shift)