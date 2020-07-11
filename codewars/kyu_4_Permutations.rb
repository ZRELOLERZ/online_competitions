def permutations(s)
  a = []
  s.chars.permutation.to_a.each{|j| a << j.join("")}
  return a.uniq
end