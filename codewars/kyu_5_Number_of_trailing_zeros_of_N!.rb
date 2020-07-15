def zeros(n)
  res = 0
  inc = 5
  while n/inc >= 1
    res += n/inc
    inc *= 5
  end
  return res
end