n, k = gets.split.map(&:to_i)
s = gets.chomp.chars
n.times do |i|
  s[i].downcase! if k - 1 == i
end
puts s.join