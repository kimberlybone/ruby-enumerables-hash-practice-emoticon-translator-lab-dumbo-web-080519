require "yaml"

def load_library (file_path)
  emojifile = YAML.load_file(file_path)
  hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emojifile.each do |meaning, emoji| 
      hash["get_meaning"][emoji[1]] = meaning
      hash["get_emoticon"][meaning] = emoji[1]
    end
  return hash
end

def get_japanese_emoticon (file, emoticon)
end

def get_english_meaning(file, emoticon)
end