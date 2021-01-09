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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{(i + 1)}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.strip
  songs.each_with_index do |s, i| 
    if s == song
      return puts "Playing #{song}"
    break
    elsif song == (i + 1).to_s
      return puts "Playing #{songs[i]}"
      break
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run
  while command != "exit"
  commands = ["play", "list", "help", "exit"]
  puts "Please enter a command:"
  command = gets.strip
  case command
    when "play"
      play
    when "list"
      list
    when "help"
      help
    when "exit"
      exit_jukebox
  end
  end
end