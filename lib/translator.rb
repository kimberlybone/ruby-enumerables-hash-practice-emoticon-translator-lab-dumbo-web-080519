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

def get_japanese_emoticon (file, e_emoticon)
  emojifile = load_library(file)
    if emojifile["get_emoticon"].include? (e_emoticon)
      return emojifile["get_emoticon"][e_emoticon]
    end 
  #puts "Type the English emoticon you would like to translate."
  #english_e = gets.chomp!
  #file.each do |meaning, translation|
   # if english_e != translation[0]
    #  puts "Sorry, your emoticon #{emoticon} is not a known emoticon. Please enter another."
     # else 
     #   return translation[1]
   # end
 # end
end

def get_english_meaning(file, emoticon)
end