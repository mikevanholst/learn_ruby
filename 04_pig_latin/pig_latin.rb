def piggy(input)

	vowels = ["a", "e","i", "o", "u"]
	second_letter = ""
	third_letter = ""



	if vowels.include? input[0]
		return  input + "ay"
	end

	if input[0,2].downcase == "qu" 
		input.slice!(0,2)
		return input + "quay"
	end	

	first_letter = input.slice!(0)

	if !vowels.include? input[0]
		second_letter = input.slice!(0)
	end	
	
	if !vowels.include? input[0]
		third_letter = input.slice!(0)
	end	
		
	return input + first_letter + second_letter + third_letter + "ay"

end	

def translate(input)

	

	array = input.split(" ")
	pigged = array.map { |word| piggy(word)}
	pigged.join(" ")


end	