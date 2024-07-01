h = Hash.new(0)
n = gets.to_i
a = gets.split.map(&:to_i)
a.each do |x|
  h[x - 1] += 1
  h[x] += 1
  h[x + 1] += 1
end
h = h.sort { |a, b| a[1] <=> b[1] }
puts h.last.last