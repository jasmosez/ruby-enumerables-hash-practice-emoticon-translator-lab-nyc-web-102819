require 'yaml'

def load_library(path)
  emoticon_library = YAML.load_file(path)
  
  new_hash = {
    :get_meaning => emoticon_library.reduce({}) { |meaning_hash, (meaning_key, ej_array)|
      puts "ej_array: #{ej_array}"
      puts "meaning_key: #{meaning_key}"
      puts "meaning_hash pre assign: #{meaning_hash}"
      meaning_hash[ej_array[1]] = meaning_key
      puts "meaning_hash POST assign: #{meaning_hash}"
      
    }, 
    :get_emoticon => emoticon_library.reduce({}){ |e_hash, (e_key, e_value)|
      e_hash[e_key[0]] = e_key[1]
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