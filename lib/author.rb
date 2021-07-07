class Author

	attr_accessor :name

	@@post = [] 

	def initialize(name)
		@name = name 
	end

	def self.post 
		@@post 
	end
	

	def posts
		Author.post.select{|post| post.author == self}
	end

	def add_post(post)
		post.author = self
	end



	def add_post_by_title(title)
		post = Post.new(title)
		post.author = self 
		@@post << post
	end

	def self.post_count
		@@post.uniq.length 
	end

end