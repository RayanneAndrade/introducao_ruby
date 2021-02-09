class AnagramCounter
  def count(list)
    palavras = list.split.map {|word| word.chars.sort.join}
    palavras.select {|word| palavras.count(word) > 1}.count
  end
end
