require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help()
  puts '''I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program'''
end
def valid_song?(songs, input)
   (input.to_i < songs.length && input.to_i > 0) || songs.include?(input)
end
def song_from_input(songs,input)
  if input.length > 3 && songs.include?(input)
    return input
  else
    index = input.to_i - 1
    return songs[index]
  end
end

def play(songs)
  #puts "Please enter a song name or number:"
  input = gets.chomp
  if valid_song?(songs,input)
    song = song_from_input(songs,input)
    puts "Playing #{song}"
  else
    puts "/Invalid input, please try again/"
    #play(songs)
  end
end

def list(songs)
  songs.each_with_index { |song, i| puts "#{i+1}. #{song}"}
end

def exit_jukebox()
  puts "/Goodbye/"
end
#binding.pry
def run(songs)
 puts "Please enter a command:"
 input = gets.chomp
 case input
 when "help"
   help()
 when "list"
   list(songs)
 when "play"
   play(songs)
 when "exit"
   exit_jukebox()
 end
end

