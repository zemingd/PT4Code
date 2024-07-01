c = []
ans = ""
3.times do
  c << gets.chomp
end

for i in (0..2) do
  ans += c[i][i]
end

puts ans