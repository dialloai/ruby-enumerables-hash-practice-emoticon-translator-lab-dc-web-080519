# require modules here
require "yaml"

require "pry" 
def load_library (emoticons)
  x = YAML.load_file(emoticons)
  hash = {"get_meaning"=> {} , "get_emoticon" => {}}
  x.each do |key, value|
  # binding.pry
  hash["get_emoticon"][value[0]] = value[1]
  hash["get_meaning"][value[1]] = key
  end
    return hash
  # binding.pry
end

def get_japanese_emoticon (file_path, emoticon)
 emoticons=load_library (file_path)
 result=emoticons["get_emoticon"][emoticon]
 if result
    result
 else 
   "Sorry, that emoticon was not found"
 end
end

def get_english_meaning (file_path, emoticon)
 emoticons=load_library (file_path)
 result=emoticons["get_meaning"][emoticon]
 if result
    result
 else 
   "Sorry, that emoticon was not found"
 end
end