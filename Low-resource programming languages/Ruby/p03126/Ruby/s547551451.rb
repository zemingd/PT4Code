n, m = gets.chomp.split.map(&:to_i)
b = Array.new(m, 0)

a = []
n.times do |i|
  a = gets.chomp.split.map(&:to_i)
  (a.length - 1).times do |j|
    b[a[j+1]-1] += 1
  end
end

puts b.select{|i| i == n}.length