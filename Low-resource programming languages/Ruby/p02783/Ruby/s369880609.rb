h, a = gets.split.map(&:to_i)

num = h % a
ans = h / a

if num == 0
  puts ans
else
  p ans + 1
end