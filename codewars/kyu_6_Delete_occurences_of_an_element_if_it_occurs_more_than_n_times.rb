def delete_nth(order, max_e)
  res = []
  counter={}
  order.uniq{|i| counter[i] = 0}
  order.each{|i|
    counter[i]+=1
    res << i if counter[i] <= max_e
  }
  return res
end
