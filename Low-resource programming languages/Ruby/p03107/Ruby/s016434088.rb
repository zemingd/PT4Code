s = gets.chomp

deleted_cube = 0
while !s.index("01").nil? || !s.index("10").nil?
  temp = s
  s = s.split(/01|10/).join
  deleted_cube += temp.length - s.length
end
print("#{deleted_cube}\n")