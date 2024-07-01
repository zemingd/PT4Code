s = gets.chomp.chars

zero = 0
one = 0
s.size.times do |i|
  if i%2==0
    zero += 1 if s[i]%2=="1"
    one += 1 if s[i]%2=="0"
  else
    zero += 1 if s[i]%2=="0"
    one += 1 if s[i]%2=="1"
  end
end

puts [zero,one].min