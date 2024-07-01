n = gets.to_i
s = gets.chomp.split('')
if s.length == s.uniq.length
  puts 0
  exit
end

max = 1
n.times do |i|
  next if i == 0 || i == n - 1
  a = s[0..i].uniq
  b = s[i..n].uniq
  max = (a & b).length if (a & b).length > max
end
puts max