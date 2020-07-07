def validBraces(s)
  reg = /(\[\]|\{\}|\(\))/
  while s.match(reg) do
    s.gsub!("[]","")
    s.gsub!("{}","")
    s.gsub!("()","")
  end
  return s.size==0
end