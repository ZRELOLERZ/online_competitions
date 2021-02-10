def high(s);
  a=s.split(" ").map{|i|i.chars.each.map{|j|j.upcase.ord-64}.sum}
  return s.split(" ")[a.index(a.max)]
end