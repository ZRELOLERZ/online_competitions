def count_smileys(a)
  res = 0
  puts a.size
  a.each{|i|
    puts i
    if (i[0] == ':' || i[0] == ';') && (i[-1] == ')' || i[-1] == 'D')
      if (i.size == 3 && (i[1] == '-' || i[1] == '~')) || (i.size == 2)
        res += 1
      end
    end
  }
  return res
end