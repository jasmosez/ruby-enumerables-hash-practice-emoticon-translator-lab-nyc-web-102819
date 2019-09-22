require 'yaml'

def load_library(path)
  emoticon_library = YAML.load_file(path)
  puts "emoticon_library.class: #{emoticon_library.class}"
  
  new_hash = {
    :get_meaning => emoticon_library.reduce({}) { |meaning_hash, (meaning_key, ej_array)|
      meaning_hash[ej_array[1]] = meaning_key
    meaning_hash
    }, 
    :get_emoticon => emoticon_library.reduce({}){ |emoticon_hash, (meaning_key, ej_array)|
    emoticon_hash[ej_array[0]] = ej_array[0]
    }
  }
  
  
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end