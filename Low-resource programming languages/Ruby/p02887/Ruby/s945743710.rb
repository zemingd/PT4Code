n = gets.to_i
s = gets.chomp.split('')
f = s.first
count = 1
(1...n).each do |i|
  if f != s[i]
    count += 1
    f = s[i]
  end
end
puts count
