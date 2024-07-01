n = gets.chomp.chars


if n == ["R", "R","R"]
  cnt = 3
elsif n == ["R","R","S"] || n == ["S","R","R"]
  cnt = 2
elsif n == ["S","S","S"]
  cnt = 0
else
  cnt = 1
end

puts cnt
  