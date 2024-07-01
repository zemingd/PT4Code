N = gets.to_i
As = [nil] + gets.split.map(&:to_i)

b = Array.new(N + 1, 0)
N.downto(1) do |n|
  b[n] = n.step(N, n).inject(0){|s, i| s + b[i]} % 2 == As[n] ? 0 : 1
end
c = b.count(1)
puts c
puts b.map.with_index{|e, i| e == 1 ? i : nil}.compact.join(' ') unless c.zero?