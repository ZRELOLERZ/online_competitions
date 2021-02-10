def validSolution(a)
  a.each.with_index{|val, index| 
    col_sum=0
    a.each{|i|
      col_sum += i[index]
    }

    if val.sum + col_sum != 90
      return false
    end
  }
  
  (0...9).step(3).each{|i|
    (0...9).step(3).each{|j|
      $A = []
      (0...3).each{|k|
        (0...3).each{|l|
          $A << a[k+i][l+j]
        }
      }
      if $A.sum != 45
        return false
      end
    }
  }
  return true
end