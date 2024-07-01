n = gets.to_i
trans = n.times.map { gets.to_i }

list = []
next_btn = 1
cnt = 0
ans = -1
loop do
  if next_btn == 2
    ans = cnt
    break
  elsif list.include?(next_btn)
    ans = -1
    break
  end

  list << next_btn
  cnt += 1
  next_btn = trans[next_btn - 1]
end

puts ans
