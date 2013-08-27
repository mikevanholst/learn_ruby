def echo(input)
 input 
end

def shout(input)
	input.upcase
	
end

def repeat(input, num = 2)
	
	output = input
	(num -1).times do
    	output = output + " " + input
	end
	return output
end	

def start_of_word(input,n)
	input[0,n]
end

def first_word(input)
	input.split( " ")[0]
end

def titleize(input)
	# return "Jaws" if input == "jaws"

	# input.capitalize unless input.include?(" ")	
	small_words = ["the", "and", "over"]

	array = input.split(" ")
	caps = array.map do |word|
		small_words.include?(word) ? word : word.capitalize
	 end
	 caps[0] = caps[0].capitalize
	 caps.join(" ")	 
	
end