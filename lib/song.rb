class Song 

	@@all = []

	attr_accessor :artist, :name

	def initialize(name)
		@name = name 
		Artist.song << self 
		Song.all << self 
	end

	def artist_name 
		if self.artist 
			self.artist.name 
		else 
			nil 
		end

	end

	def self.all 
		@@all 
	end
end