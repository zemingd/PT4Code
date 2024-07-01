A, B, C = gets.chomp.split(" ").map(&:to_i)
res = A - B
c = C - res

if c < 0
  c = 0
else
  c = C - res
end

puts c