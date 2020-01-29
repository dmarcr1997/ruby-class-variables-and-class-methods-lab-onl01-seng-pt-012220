class Song
  @@count = 0
  @@genre = []
  @@artist = []
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@genre << @genre
    @@artist << @artist
  end
  
  def self.genre
    temp_var = ""
    temp_hash = {}
    @@genre.each do |g|
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
    @@genre = @@genre.uniq
    temp_hash
  end  
      
  def self.artist
    temp_var = ""
    temp_hash = {}
    @@artist.each do |g|
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
  end
  
  def self.genre_count
    
  end
  def self.count 
    @@count
  end
end