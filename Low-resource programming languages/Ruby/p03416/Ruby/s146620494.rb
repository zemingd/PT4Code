a, b = gets.split(" ").map{ |i| i.to_i }
cnt = 0
for i in a...b do
  c = i.to_s.chars
#  p c
  flg = true
  for j in 0...c.length / 2 do
    if not c[j] == c[c.length - j - 1]
      flg = false
      break
    end
  end
  if flg == true
    cnt += 1
  end
end

puts cnt
