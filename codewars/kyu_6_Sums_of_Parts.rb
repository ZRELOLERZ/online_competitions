def parts_sum(a)
  t = []
  t << a.sum
  a.each{|i| t << t[-1]-i}
  return t
end