n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)

ans = 0
before = 100
n.times do |i|
  ans += b[a[i]-1]
  ans += c[a[i-1]-1] if i - before == 2
  before = a[i]-1
end

puts ans