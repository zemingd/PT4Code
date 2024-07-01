A, B, C, D = gets.split.map(&:to_i)

v = [B, D].min - [A, C].max

if v > 0
  puts v
else
  puts 0
end