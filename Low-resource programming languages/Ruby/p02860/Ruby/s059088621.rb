n = gets.to_i
s = gets.chomp
ans = 'Yes'
if n.odd?
  ans = 'No'
else
  n2 = n / 2
  n2.times do |i|
    if s[i] != s[n2 + i]
      ans = 'No'
    end
  end
end
puts ans
