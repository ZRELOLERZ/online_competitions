def createPhoneNumber(n)
  n=n.join("")
  a=n[0..2]
  b=n[3..5]
  c=n[6..9]
  return "(%s) %s-%s" % [a,b,c]
end