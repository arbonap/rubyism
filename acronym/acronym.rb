require 'pry'
class Acronym

  def self.abbreviate(string)
    abbreviation = ''
    string.split(/[\s-]/).map do |word|
      abbreviation += word[0] unless word.nil? || word.empty?
    end
    abbreviation.upcase
  end
end
