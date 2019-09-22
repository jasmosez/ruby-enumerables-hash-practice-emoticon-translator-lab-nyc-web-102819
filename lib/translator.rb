require 'yaml'

def load_library(path)
  
  emoticon_library = YAML.load_file(path)
  
  
  new_hash = {
    :get_meaning => emoticon_library.reduce({}) { |m_hash, (m_key, m_value)|
      m_hash = {m_value[1] => m_key}
    } 
    :get_emoticon => emoticon_library.reduce({}){ |e_hash, (e_key, e_value)|
      e_hash = m_key[0] => m_key[1]
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