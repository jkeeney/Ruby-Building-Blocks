dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dic_array)

	frequency = Hash.new(0)
	string_array = string.split(' ')

	string_array.each do |string_word|
		dic_array.each do |dic_word| 
			frequency[dic_word] += 1 if string_word.downcase.match(dic_word)
		end
	end

	puts frequency.inspect
end

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)
