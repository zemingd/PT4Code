n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)

a = Array.new(n,Float::INFINITY)
b = [0,(h[1]-h[0]).abs]

(2..n-1).each do |i|
  b[i] = [b[i-1]+(h[i-1]-h[i]).abs, b[i-2]+(h[i-2]-h[i]).abs].min()
end

puts b[n-1]