line = gets.split("")

add = line.select do | num |
  num == "+"
end

del = line.select do | num |
  num == "-"
end

puts add.count - del.count