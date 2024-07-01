a, b, c = gets.chomp.split.map(&:to_i)

ans = b / a

if ans <= c
  puts ans
elsif ans > c
  puts c
end