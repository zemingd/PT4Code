n = gets.to_i
s = n.times.map{gets.to_i}.sort

ans = s.inject(:+)
flag = false
if ans % 10 == 0
  n.times do |i|
    if s[i] % 10 != 0
      ans -= s[i]
      flag = true
      break
    end
  end
else
  flag = true
end

ans = 0 if !flag
puts ans