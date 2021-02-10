def maskify(s)
  return s.size>4 ? "#"*(s.size-4)+s[s.size-4...s.size] : s
end