class Drone
  def manhattan_distance(instructions)
    letras = 'N L S O'
    distances = letras.split.map do |letter|
      direction = instructions.scan /[#{letter}]\d+/
      values = direction.join.scan(/\d+/)
      values.map(&:to_i).reduce(:+)
    end
    x = 0 - (distances[0] - distances[2]).abs
    y = 0 - (distances[1] - distances[3]).abs
    (x + y).abs
  end
end