n, y = gets.split.map(&:to_i)
key = 0
_i = _j = _k = -1
(0..n).each do |i|
  (0..(n-i)).each do |j|
    k = n - i - j
    if y == ( i * 10000 + j * 5000 + k * 1000 )
      _i = i
      _j = j
      _k = k
    end
  end
end

puts "#{_i} #{_j} #{_k}"
