require "yaml"

def load_library (file)
  emojifile = YAML.load_file('emoticons.yml')
  hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emojifile.each do |meaning, emoji| 
      hash["get_meaning"][file[1]] = {file[1] => meaning}
      hash["get_emoticon"] = {file[0] => key}
  return hash
end

def get_japanese_emoticon (file, emoticon)
  load_library('emoticons.yml')
end

def get_english_meaning(file, emoticon)
  load_library('emoticons.yml')
end