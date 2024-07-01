s = gets.chomp.split('').map(&:to_i)
count = 0

(s.length - 1).times do |i|
  if s[i] == s[i + 1]
    count += 1
    s[i + 1] = s[i] == 0 ? 1 : 0
  end
end

puts count