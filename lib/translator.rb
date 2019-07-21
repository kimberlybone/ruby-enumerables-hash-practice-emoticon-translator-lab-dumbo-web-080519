require "yaml"

def load_library (file)
  emojifile = YAML.load_file(file)
  hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emojifile.each do |meaning, emoji| 
      hash["get_meaning"][emoji[1]] = meaning
      hash["get_emoticon"][emoji[0]] = emoji[1]
    end
  return hash
end

def get_japanese_emoticon (file, emoticon)
  load_library(file)
  puts "Type the English emoticon you would like to translate."
  english_e = gets.chomp!
  file.each do |meaning, translation|
  if english_e != translation[0]
    puts " "
  else 
    puts translation[1]
  hash ={}
  hash[]
  puts "Sorry, your emoticon #{emoticon} is not a known emoticon. Please enter another."
end

def get_english_meaning(file, emoticon)
end