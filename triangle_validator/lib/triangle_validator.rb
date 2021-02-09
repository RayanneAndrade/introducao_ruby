class TriangleValidator
  def validate_list(list)
    comb = list.split.map(&:to_i).combination(3)
    valid_triangles = comb.select do |sides|
      sides.sum - sides.max > sides.max
    end
    valid_triangles.map { |sides| sides.reduce(&:*) }
  end
end