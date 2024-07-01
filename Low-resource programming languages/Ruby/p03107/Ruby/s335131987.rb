s = gets.chomp

deleted_cube = 0
while !s.index("01").nil? || !s.index("10").nil?
  if !s.index("01").nil?
    index = s.index("01")
  else
    index = s.index("10")
  end
  s.slice!(index, 2)
  deleted_cube += 2
end
print("#{deleted_cube}\n")