require 'pry'
class Anagram
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def match(array)
    pairs = {}

    array.map do |item|
      if item.downcase != str.downcase
        pairs[item] = sorted_str(item)
      end
    end

    output = [].compact
    pairs.map do |key, value|
      output.push(key) if pairs[key] == sorted_str(str)
    end
    output
  end

  def sorted_str(str)
    str.downcase.chars.sort.join
  end
end
