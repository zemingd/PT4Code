h,a = gets.split.map(&:to_i)
cnt = 0
while h > 0
  h -= a
  cnt += 1
end

puts cnt
