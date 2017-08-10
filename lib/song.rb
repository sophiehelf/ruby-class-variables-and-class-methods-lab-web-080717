class Song

	attr_accessor :name, :artist, :genre 

	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@genres << genre
		@@artists << artist
	end

	def self.count 
		@@count
	end

	def self.genres
		genres_array = []
		@@genres.each do |genre|
			if !genres_array.include?(genre)
				genres_array << genre 
			end
		end
		genres_array
	end

	def self.artists
		artist_array = []
		@@artists.each do |genre|
			if !artist_array.include?(genre)
				artist_array << genre 
			end
		end
		artist_array
	end

	def self.genre_count
		genres_hash = {}
		@@genres.each do |genre|
			if !genres_hash.has_key?(genre)
				genres_hash[genre] = 1
			else
				genres_hash[genre] +=1
			end
		end
		genres_hash
	end

	def self.artist_count
		song_hash = {}
		@@artists.each do |song|
			if !song_hash.has_key?(song)
				song_hash[song] = 1
			else
				song_hash[song] +=1
			end
		end
		song_hash
	end

end