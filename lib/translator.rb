require "yaml"

def load_library (file_path)
  emojifile = YAML.load_file('emoticons.yml')
  hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emojifile.each do |meaning, emoji| 
      hash["get_meaning"][emoji[1]] = meaning
      hash["get_emoticon"][emoji[0]] = meaning
    end
  return hash
end

def get_japanese_emoticon (file, emoticon)
end

def get_english_meaning(file, emoticon)
end