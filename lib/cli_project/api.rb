require 'pry'
class API 
  

  # def list_artists
  #   playlist.tracks.sort{ |a, b| a.name <=> b.name }.map.with_index(1)  do |s, i|
  #   puts "#{i}. #{s.artists[0].name}"
  #   end
  # end  
  
  def list_songs
    playlist.tracks.sort{ |a, b| a.name <=> b.name }.map.with_index(1)  do |s, i|
    puts "#{i}. #{s.name}"
    end
  end  
  
  def call
    input = ""
    until input == "exit"
    puts "To list all the popular songs, enter 'top 50'."
    puts "To exit, type 'exit'."
    puts "What song number would you like too see?"
    input = gets.strip.downcase
    
   if input.to_i > 0
     playlist.tracks.map.with_index(1) do |art, i|
    puts "#{i}. #{art.artists[0].name}"
  end 
     
     == "top 50"
     list_songs
    elsif 
    
   end
    
  end
    
    def print_songs(number)  
      playlist.tracks[number-1, 50].map.with_index(number) do |song, index|
        puts "#{index}. #{song.name}"
      end
      
    
  # if input == "top 50"
  #     top_50
  #     puts "If you'd like to see the artists for these songs type 'y'?"
  #     elsif input == "y"
  #       top_50_artists
  #       elsif input == "n" 
  #       input == ""
  #   end
   end
  end
  
 end

  def playlist
    playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
  end
    
    
  def top_50  
    playlist.tracks.map.with_index(1) do |song, i|
    puts "#{i}. #{song.name}"
  end
  end
  
  def top_50_artists
    playlist.tracks.map.with_index(1) do |art, i|
    puts "#{i}. #{art.artists[0].name}"
  end  
    
  # def sorted_artists
  #   playlist.tracks.sort{ |a, b| a.name <=> b.name }.map.with_index(1)  do |s, i|
  #   puts "#{i}. #{s.artists[0].name}"
  # end
  #   end
  end
end