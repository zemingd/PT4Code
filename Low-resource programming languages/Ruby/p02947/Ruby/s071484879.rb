n = gets.to_i
h = Hash.new(0)
ans = 0
n.times do
  s = gets.chomp.unpack("C*").sort.pack("U*")
  ans += h[s]
  h[s] += 1
end
puts ans