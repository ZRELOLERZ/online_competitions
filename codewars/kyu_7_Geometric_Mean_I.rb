def geometric_meanI(arr)
  invalid = 0
  a = []
  arr.each{|i|
    if i.class==Integer && i >= 0
      a << i
    else
      invalid += 1
    end
  }
  if a.size >= 2 && a.size <= 10 && invalid <= 1
    return a.reduce(:*)**(1/a.size.to_f)
  elsif a.size >= 11 && invalid < arr.size*0.10
    return a.reduce(:*)**(1/a.size.to_f)
  else
    return 0
  end
end