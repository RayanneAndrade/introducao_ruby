class Word
  def vowels_count(phrase)
    phrase.count "a,e,i,o,u,A,E,I,O,U,á,ã,y,Y"
  end

  def consonants_count(phrase)
    phrase.downcase.count("bcdfghjklmnpqrstvwxz")
  end
end
