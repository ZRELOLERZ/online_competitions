def last_available(board, column)
  #returns last available column
  #if no position found returns -1 else returns index
  if board[0][column] != 0 
    return -1
  else 
    idx = 0
    board.each.with_index{|r,i|
      return i-1 if r[column] != 0
      idx = i
    }
    return idx
  end
end

def check_winner(board)
  #check of each row
  board.each{|row|
    row = row.join("")
    if row.include? "RRRR"
      return 'R'
    elsif row.include? "YYYY"
      return 'Y'
    end
  }

  #check of each column
  (0...7).each{|column|
    a = []
    (0...6).each{|row|
      a << board[row][column]
    }
    a = a.join("")
    if a.include? "RRRR"
      return 'R'
    elsif a.include? "YYYY"
      return 'Y'
    end
  }
  
  #check of each diagonal
  #/ ->
  a = []
  (3..5).each{|columnstart|
    temp = []
    dec = columnstart
    (0...columnstart+1).each{|row|
      temp << board[row][dec]
      dec -= 1
    }
    a << temp
  }

  (0..2).each{|rowstart|
    temp = []
    dec = 6
    (rowstart..5).each{|row|
      temp << board[row][dec]
      dec -= 1
    }
    a << temp
  }

  #\ ->
  (0..2).each{|rowstart|
    temp = []
    inc = 0
    (rowstart..5).each{|row|
      temp << board[row][inc]
      inc += 1
    }
    a << temp
  }

  (1..3).each{|columnstart|
    temp = []
    inc = columnstart
    (0..6-columnstart).each{|row|
      temp << board[row][inc]
      inc += 1
    }
    a << temp
  }

  a.each{|i|
    i = i.join("")
    r = i.include? "RRRR"
    y = i.include? "YYYY"
    return 'R' if r
    return 'Y' if y
  }

  #no matches
  return 'N'
end

def who_is_winner(moves)
  board = [
    [0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0],
  ]
  d = {
    'A' => 0,
    'B' => 1,
    'C' => 2,
    'D' => 3,
    'E' => 4,
    'F' => 5,
    'G' => 6
  }

  moves.each_with_index{|i, ind|
    location, player = i.split("_")
    column = d[location]
    #player Red = R
    #player Yellow = Y
    disc = 'R'
    disc = 'Y' if player == 'Yellow'
    idx = last_available(board, column)
    board[idx][column] = disc if idx >= 0
     
    res = check_winner(board)
    if res == 'Y'
      return "Yellow"
    elsif res == 'R'
      return "Red"
    end
    if ind == moves.size-1
      return "Draw"
    end
  }
end :w
