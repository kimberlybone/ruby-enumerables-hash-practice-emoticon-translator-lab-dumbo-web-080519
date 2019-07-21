require "yaml"

def load_library (file)
  emoji_file = YAML.load('emoticons.yml')
  hash = {"get_meaning" => {}, "get_emoticon" => {}}
      hash["get_meaning"] = {file[1] => key}
      hash["get_emoticon"] = {file[0] => key}
  return hash
end

def get_japanese_emoticon (file, emoticon)
  load_library('emoticons.yml')
end

def get_english_meaning(file, emoticon)
  load_library('emoticons.yml')
end