def fake_bin(s)
  return s.chars.map{|i|i.to_i < 5 ? '0' : '1'}.join("")
end