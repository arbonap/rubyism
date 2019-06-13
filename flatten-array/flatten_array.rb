class FlattenArray
  def self.flatten(array, results=[])
    array.map do |char|
      if char.class == Array
        self.flatten(char, results)
      else
        results.push(char)
      end
    end
    results.compact
  end
end
