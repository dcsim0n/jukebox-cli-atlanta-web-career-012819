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
  input.to_i < songs.length || songs.include?(input)
end
def song_from_input(songs,input)
  if input.length > 3
    return songs.find(input)
  else
    index = input.to_i - 1
    return songs[index]
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if valid_song?(songs,input)
    song = song_from_input(songs,input)
    puts "Playing #{song}"
  else
    puts "Invalid input, lease try again"
    play(songs)
  end
end

def list(songs)
  songs.each_with_index { |song, i| puts "#{i+1}. #{song}"}
end

def exit_jukebox()

end
binding.pry
def run()
 puts ""  
end

