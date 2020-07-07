def duplicate_encode(word)
  return (word=word.upcase).chars.map{|i|i = word.count(i) > 1 ? ')' : '('}.join('')
end