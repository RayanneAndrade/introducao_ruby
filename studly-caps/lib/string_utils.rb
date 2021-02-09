  class StringUtils
  def wavefy(string)
    array = string.chars
    array.each_with_index do |value, index|
      if index.even?
        array[index] = value.downcase
      else 
        array[index] = value.upcase
      end
    end
    array.join
  end
end