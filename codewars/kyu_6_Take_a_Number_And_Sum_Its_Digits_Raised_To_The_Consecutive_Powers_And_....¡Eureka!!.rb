def sum_dig_pow(a, b)
  res = []
  (a..b).each{|i|
    p=0
    res << i if i.to_s.chars.map{|j|j.to_i**(p+=1)}.sum == i
  }
  return res
end
