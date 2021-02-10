def check_exam(x, y)
  res = 0
  x.each.with_index{|a, i|
    b = y[i]
    if b == ""
      res += 0
    elsif a == b
      res += 4
    elsif a != b
      res -= 1
    end 
  }
  return res < 0 ? 0 : res
end