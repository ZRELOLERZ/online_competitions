def minmax_by list, &block
  return list.minmax_by{|i|yield i}
end