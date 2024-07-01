s = gets.chomp

s << 'Z'
ans = 0
acgt = ""
s.size.times do |i|
  if %w(A C G T).include?(s[i])
    acgt << s[i]
  else
    ans = [ans, acgt.size].max
    acgt = ""
  end
end

puts ans
