class Book

	
	ARTICLES = %w(the a an in or the to and of)
	attr_accessor :title
	

	def title
		words = @title.split(" ")
		words.map do |word| 
			word.capitalize! unless ARTICLES.include?(word)
		end
		words.first.capitalize!
		words.join(" ")


	end	
end
