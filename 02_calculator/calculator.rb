


def add(a,b)
	a + b

end	

def subtract(a,b)
	a - b
end	

def sum(array)

	
	array.inject(0) {|sum, n| sum + n}
	#array.inject(0, :+)
	
end

def multiply(*array)
	array.inject(1) {|sum, n| sum * n}
end

def factorial(n)
	return 0 if n == 0
	(1..n).inject(1) { |total, i| total*i }
	
end