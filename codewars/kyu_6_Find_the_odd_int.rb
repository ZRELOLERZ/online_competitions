def find_it(seq)
  seq.uniq.each{|i| 
    if seq.count(i)%2!=0
      puts i
      break
    end
  }
end