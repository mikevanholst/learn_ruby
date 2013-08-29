class	Temperature

	
	def initialize(hash)
		@temp = hash
	end

	
	def to_fahrenheit
		
		return @temp[:f]  if @temp.key?(:f)
		# self[:f] = temp
		@temp[:f] = @temp[:c] * 9/5 + 32
	end

	def to_celsius
		
		return @temp[:c] if @temp.key?(:c)
		
		@temp[:c] = (@temp[:f]-32) * 5/9
	end


	def self.in_celsius(c_temp)
		Temperature.new({:c => c_temp})
	end

	def self.in_fahrenheit(f_temp)
		Temperature.new({:f => f_temp})
	end

end #class	


class	Celsius < Temperature

	def initialize (c_temp)
		super({:c => c_temp})
	
	end
end	


class Fahrenheit < Temperature

	def initialize  (f_temp)
		super({:f => f_temp})
	end

end

puts Temperature.new({:f => 50}).to_fahrenheit