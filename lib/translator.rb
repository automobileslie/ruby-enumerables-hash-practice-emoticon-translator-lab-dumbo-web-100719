require 'pry'
require 'yaml'

def load_library (file_path)
  emoticons = YAML.load_file("./lib/emoticons.yml")
  
  translation= {get_meaning: { }, get_emoticon: {}}
 emoticons.each_pair do |word, symbols|
  translation[:get_meaning][symbols[1]]= word
  translation[:get_emoticon][symbols[0]]= symbols[1]
end
translation
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
 result = load_library(file_path)[:get_emoticon][emoticon]
 
  if result
      result
  else
      return "Sorry, that emoticon was not found"
  end
 end


def get_english_meaning(file_path, emoticon)
  #binding.pry
 load_library(file_path)
 the_meaning = load_library(file_path)[:get_meaning][emoticon]
 
  if the_meaning
      the_meaning
  else
      return "Sorry, that emoticon was not found"
  end
 end
  

# {"angel"=>["O:)", "☜(⌒▽⌒)☞"],
# "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
# "bored"=>[":O", "(ΘεΘ;)"],
# "confused"=>["%)", "(゜.゜)"],
# "embarrased"=>[":$", "(#^.^#)"],
# "fish"=>["><>", ">゜))))彡"],
# "glasses"=>["8D", "(^0_0^)"],
# "grinning"=>["=D", "(￣ー￣)"],
# "happy"=>[":)", "(＾ｖ＾)"],
# "kiss"=>[":*", "(*^3^)/~☆"],
# "sad"=>[":'(", "(Ｔ▽Ｔ)"],
# "surprised"=>[":o", "o_O"],
# "wink"=>[";)", "(^_-)"]}