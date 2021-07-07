class Artist 

	attr_accessor :name

	@@song = []

	def initialize(name)
		@name = name 
	end

	def self.song 
		@@song 
	end

	def songs 
		Artist.song.select{|song| song.artist == self}
	end

	def add_song(song)
		song.artist = self 
	end

	def add_song_by_name(name)
		song = Song.new(name)
		song.artist = self 
		@@song << song
	end

	def self.song_count
		@@song.uniq.length
	end



end