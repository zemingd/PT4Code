s = gets.split('').map(&:to_i)
ans = 1000
(s.size-3).times do |i|
  if (s[i]*100+s[i+1]*10+s[i+2]-753).abs < ans
    ans = (s[i]*100+s[i+1]*10+s[i+2]-753).abs
  end
end
puts ans
