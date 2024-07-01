n = gets.to_i
map = Hash.new(0)
(1..100).each do |x|
  (1..100).each do |y|
    (1..100).each do |z|
      map["#{(x ** 2) + (y ** 2) + (z ** 2) + (x * y) + (y * z) + (z * x)}"] += 1
    end
  end
end
(1..n).each do |i|
  puts map[i.to_s]
end
