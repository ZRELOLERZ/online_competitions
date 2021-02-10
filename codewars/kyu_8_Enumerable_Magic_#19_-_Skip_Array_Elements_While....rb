def drop_while list, &block
  start = 0
  list.each.with_index{|v, i|
     if !(yield v)
      start = i
      break
     end
  }
  return list[start...list.size]
end