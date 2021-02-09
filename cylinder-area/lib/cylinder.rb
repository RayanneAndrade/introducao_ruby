class Cylinder
  def calculate_area(cylinder)
    radius, height = cylinder.split('x').map(&:to_i)
    6 * radius * (height + radius)
  end

  def find_cylinders(cylinders, target_area)
    cylinders.select do |dimensao|
      dimensao if calculate_area(dimensao) >= target_area
  end
  end
end
