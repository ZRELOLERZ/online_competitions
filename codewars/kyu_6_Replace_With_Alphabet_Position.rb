def alphabet_position(text)
  a=[]
  text.chars.each{|i|
    i=i.upcase
    if i.match(/[A-Z]/) 
      a << i.ord-64
    end
  }
  return a.join(" ")
end