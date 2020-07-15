def halving_sum n
  res = n
  while n > 0
    res += (n/=2)
  end
  return res
end