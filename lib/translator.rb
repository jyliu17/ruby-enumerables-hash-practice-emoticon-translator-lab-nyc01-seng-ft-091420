# require modules here
require 'yaml'
require 'pry'


def load_library(path)
  # code goes here
  final_hash = {}
  YAML.load_file(path).each do |key, value|
    final_hash[key] = {}
    final_hash[key][:english] = value[0]
    final_hash[key][:japanese] = value[1] 
  end
  final_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  load_library(path).each do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end
end

def get_english_meaning
  # code goes here
end