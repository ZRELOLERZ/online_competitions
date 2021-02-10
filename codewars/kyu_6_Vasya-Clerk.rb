def tickets(people)
  d={
  25 => 0,
  50 => 0,
  100 => 0,
  }
  res = "YES"
  people.each{|i|
    to_give = i-25
    d[i]+=1

    #100 calculation  
    a=to_give/100
    if d[100] >= a
      to_give = to_give - (a*100)
      d[100] -= a
    else
      on_hand = d[100]
      to_give = to_give - (on_hand*100)
      d[100] = 0
    end

    #50 calculation  
    a=to_give/50
    if d[50] >= a
      to_give = to_give - (a*50)
      d[50] -= a
    else
      on_hand = d[50]
      to_give = to_give - (on_hand*50)
      d[50] = 0
    end

    #25 calculation  
    a=to_give/25
    if d[25] >= a
      to_give = to_give - (a*25)
      d[25] -= a
    else
      on_hand = d[25]
      to_give = to_give - (on_hand*25)
      d[25] = 0
    end

    if to_give > 0
      res="NO"
      break
    end
  }
  return res
end