def multiplication_table(n)
  a = []
  (1..n).each{|i|
    t = []
    (1..n).each{|j| t << i*j}
    a << t
  }
  return a
end