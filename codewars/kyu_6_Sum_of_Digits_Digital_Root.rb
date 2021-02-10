def digital_root(n)
  n=n.to_s
  while n.size > 1
    n=n.chars.each.map{|i|i.to_i}.reduce(:+).to_s
  end
  return n.to_i
end