def solution(str)
  res = []
  str+='_' if str.size%2!=0
  (0...str.size).step(2).each{|i| res << str[i..i+1]}
  return res
end
