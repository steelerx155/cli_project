require 'pry'
class API 
  attr_accessor :CLI, :artists, :album, :tracks, :name
  
  @@all = []
  
  # def initialize(name)
  #     # @collaborative = options['collaborative']
  #     # @description   = options['description']
  #     # @followers     = options['followers']
  #     # @images        = options['images']
  #     # @name          = options['name']
  #     # @public        = options['public']
  #     # @snapshot_id   = options['snapshot_id']
  #     # @total         = options['tracks']['total'] 
  #     @name = name
  # end
 
  def artists
    @artists
  end

  def tracks
    @tracks
  end


  
  RSpotify.authenticate("f2d6e54d3bed499983183cb8c183dd75", "14e98f258cce4f89b5eb48f8342f6f37")
  
  # def self.all
  #   @@all << self
  # end
  
  def call
    input = ""
    until input == "exit"
    puts "Welcome to today's 50 most popular songs!"
    puts "To list all the popular songs, enter 'top 50'."
    puts "To list all of the artists in the top 50, enter 'top 50 artists'."
    puts "To list all of the genres in the top 50, enter 'top 50 genres'."
    puts "To exit, type 'exit'."
    puts "What would you like to do?"
    input = gets.chomp
    # input = gets.strip
    
    case input 
     when "top 50"
      top_50
    end
  end
end

   def playlist
     playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
   end
   
    
   def top_50  
     playlist.tracks.map do |song|
     puts song.name
   end
  end
   
  
  def top_50_artists
    #this should list all the artists
  end
  
  def top_50_genres
    #this shoudl list all the genres
    
  end
 end