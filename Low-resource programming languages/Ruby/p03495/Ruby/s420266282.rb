n,k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = Array.new(n,0)
a.each do |i|
  b[i-1] += 1
end
b.delete(0)
b.sort!
if b.size <= k 
  puts 0
else
  puts b[0..-k-1].inject(:+)
end