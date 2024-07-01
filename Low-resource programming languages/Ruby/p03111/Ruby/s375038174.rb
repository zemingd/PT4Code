(n, a, b, c) = gets.chomp.split(' ').map(&:to_i)

l = [0] * n
n.times { |i| l[i] = gets.chomp.to_i }
l.sort!

v = []
(1...1 << n).each do |i|
  u = sprintf("%08b", i).split('').map(&:to_i).reverse
  v.push( {:u => u, :s => l.zip(u).map{|a, b| a * b}.reduce(:+)} )
end
v.sort!{|a, b| a[:s] <=> b[:s]}

def add(v, u)
  v.zip(u).map{|a, b| a + b}
end

min = 0xFFFFFFFF

v.each do |obj_a|
  v.each do |obj_b|
    v.each do |obj_c|
      u = add(obj_a[:u], add(obj_b[:u], obj_c[:u]))
      if u.find{|x| x >= 2}.nil? then
        s = (obj_a[:s] - a).abs + (obj_b[:s] - b).abs + (obj_c[:s] - c).abs
        s += (u.count(1) - 1) * 10
        min = [min, s].min
      end
    end
  end
end

puts min.to_s