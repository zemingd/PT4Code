n,k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = Hash.new(0)
a.each do |num|
  b[num] += 1
end
c = b.sort_by{|k,v|v}
ans = 0
for i in 0..c.size-k-1
  ans += c[i][1]
end
puts ans