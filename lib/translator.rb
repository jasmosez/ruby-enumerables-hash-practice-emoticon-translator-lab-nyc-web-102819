require 'yaml'

def load_library(path)
  
  emoticon_library = YAML.load_file(path)
  
  
  new_hash = {
    :get_meaning => emoticon_library.reduce({}) { |m_hash, (m_key, m_value)|
      
    } 
    :get_emoticon => emoticon_library.reduce({}){ |e_hash, (e_key, e_value)|
      
    }
      
    }
  }
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end