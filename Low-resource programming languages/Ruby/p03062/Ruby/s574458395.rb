n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

a.sort!

ans = a.inject(&:+)

(n/2).times do |i|
  a[i*2] *= -1
  a[i*2+1] *= -1
  ans = [ans, a.inject(&:+)].max
end

puts ans
