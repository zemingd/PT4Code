n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

sakkitabetano = -2
ans = 0
n.times do |i|
  ans += b[i]
  if sakkitabetano+1 == a[i]-1
    ans += c[a[i]-2]
  end
  sakkitabetano = a[i]-1
end
puts ans