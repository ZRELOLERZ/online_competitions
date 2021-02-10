def movie(card, ticket, perc)
  res = 1
  a = ticket
  b = card + (ticket*perc)
  while b.ceil >= a
    a += ticket
    b += (ticket*(perc**(res+1)))
    res += 1
  end
  return res
end
