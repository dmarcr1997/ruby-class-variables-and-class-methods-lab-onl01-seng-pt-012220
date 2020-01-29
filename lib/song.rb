class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
  end
  
  def self.genres
    temp_var = ""
    temp_arr = []
    @@genres.each do |g|
      if g == temp_var
      
      else
        temp_arr << g
        temp_var = g
      end
    end
    temp_arr
  end  
      
  def self.artists
    temp_var = ""
    temp_arr = []
    @@artists.each do |g|
      if g == temp_var
      
      else
        temp_arr << g
        temp_var = g
      end
    end
    temp_arr
  end
  
  def self.genre_count
    temp_var = ""
    temp_hash = {}
    @@genres.each do |g|
      if g == temp_var
        if temp_hash[g] >= 2
          temp_hash[g] += 1
        else 
          temp_hash[g] = 2
        end
        temp_var = g
      else
        temp_hash[g] = 1
        temp_var = g
      end
    end
    temp_hash
  end
  
#   def artist_count
#     temp_var = ""
#     temp_hash = {}
#     @@artists.each do |g|
#       if g == temp_var
#         if temp_hash[g] >= 2
#           temp_hash[g] += 1
#         else 
#           temp_hash[g] = 2
#         end
#         temp_var = g
#       else
#         temp_hash[g] = 1
#         temp_var = g
#       end
#     end
#     temp_hash  
#   end
  
#   def self.count 
#     @@count
#   end
# end