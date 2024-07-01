s = gets.chomp.split('').map(&:to_i)
t = s[0]
count = 0
(s.size - 1).times do |i|
  if t == s[i + 1]
    count += 1
    s[i + 1] = s[i + 1].zero? ? 1 : 0
  end
  t = s[i + 1]
end

puts count