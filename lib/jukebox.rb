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
  songs.with_index(1) do |num, song|
    puts "#{num}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  selection = ""
  if choice.is_a? Integer && choice > 0 && choice <= 9
    puts "Playing #{songs[choice - 1]}"
  elsif  songs.each {|x| 
    if x.include? choice then selection << x end}
    puts "Playing #{selection}"
  else
    puts "Invalid input, please try again"
  end  
end

def exit_jukebox
  puts "Goodbye"
end

def run
  help
  com = ""
  while com != "exit"
    puts "Please enter a command:"
    com = gets.chomp
    case com
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else
      puts "Invalid input, please try again"
    end
end