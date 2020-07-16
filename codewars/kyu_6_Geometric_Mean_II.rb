def geometric_meanII(arr)
  invalid = 0
  a = []
  arr.each{|i|
    if i.class==Integer && i >= 0
      a << i
    else
      invalid += 1
    end
  }
  b = []
  a.uniq.each{|i| 
    b << a.count(i)*Math.log(i)
  }
  if a.size >= 2 && a.size <= 10 && invalid <= 1
    return Math.exp(b.sum/a.size)
  elsif a.size >= 11 && invalid < arr.size*0.10
    return Math.exp(b.sum/a.size)
  else
    return 0
  end
end