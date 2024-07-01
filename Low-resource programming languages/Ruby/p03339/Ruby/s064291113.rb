n = gets.to_i
ss = gets.chars

min = Float::INFINITY

dp = {l_w: 0, r_w: ss.count{|s| s == "W"}, l_e: 0}
dp[:r_e] = n - dp[:r_w]

if ss[0] == "W"
  dp[:r_w] -= 1
else
  dp[:r_e] -= 1
end

n.times do |i|
  if ss[i] == "W"
    dp[:r_w] -= 1
  else
    dp[:r_e] -= 1
  end

  if ss[i-1] == "W"
    dp[:l_w] += 1
  else
    dp[:l_e] += 1
  end

  count = dp[:l_w] + dp[:r_e]
  min = [min, count].min
end

puts min