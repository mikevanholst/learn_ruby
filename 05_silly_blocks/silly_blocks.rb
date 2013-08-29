def reverser

 array = yield.split(" ")
 reversed = array.map {|word| word.reverse}
  reversed.join(" ")
	


 # join_it		

end




def adder(num = 1)
	yield + num
	
end


def repeater(num = 0)
	 
	 
	return yield if num == 0 

	return num.times {|block| yield }
	
	
end