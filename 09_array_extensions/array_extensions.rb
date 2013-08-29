class Array
	
	def sum
		
		return 0 if self == [] 
		return self.inject(:+)
	end

	def square
		return [] if self.empty?
		return self.map { |n| n ** 2}
	end

	def square!
		return [] if self.empty?
		return self.map! { |n| n ** 2}
	end
	


end	