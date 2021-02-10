def quarter_of(month)
  res=1
  if month > 9
    res=4
  elsif month > 6
    res=3
  elsif month > 3
    res=2
  end
  return res
end