class Sudoku
  def check(list)
    list.reduce(:+) == 45
  end
end