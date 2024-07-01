num = gets.split(" ").map(&:to_i)

ans = (num[0] + num[1]) / 2
ans_permit = (num[0] + num[1]) % 2

if ans_permit == 0
  puts ans
else
  puts "IMPOSSIBLE"
end