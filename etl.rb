require 'pry'

class ETL
  # old = {
  #   1 => ["A"]
  # }
  # expected = {
  #   'a' => 1
  # }
  def self.transform(old)
    transform = {}
    old.map do |k, v|

      v.map do |vowel, num|
        lower_vowel = vowel.downcase
        transform[lower_vowel] = k
      end
    end
    transform
  end
end
