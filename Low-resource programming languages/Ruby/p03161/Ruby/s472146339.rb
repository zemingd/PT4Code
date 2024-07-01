n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

c = Array.new(n, 10 ** 9)
c[0] = 0
c[1] = (h[0] - h[1]).abs
(2..(n - 1)).each do |i|
  (([0, i - k].max)..(i - 1)).each do |j|
    c[i] = [c[i], c[j] + (h[j] - h[i]).abs].min 
  end
end

puts c[-1]
