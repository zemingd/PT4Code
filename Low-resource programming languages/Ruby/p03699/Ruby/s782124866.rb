n = gets.to_i
ans = 0
min = 1000
n.times do
  s = gets.to_i
  ans += s
  min = s if s % 10 != 0 && s < min
end

if ans % 10 == 0
  if min == 1000
    ans = 0
  else
    ans -= min
  end
end

puts ans

