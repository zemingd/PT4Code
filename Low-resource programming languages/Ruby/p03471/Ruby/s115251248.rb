n, y = gets.strip.split.map(&:to_i)
_i, _j, _k = -1, -1, -1

(0..n).each do |i|
  (0..n - i).each do |j|
    if i * 10000 + j * 5000 + (n - i - j) * 1000 == y
      _i, _j, _k = i, j, n - i - j
    end
  end
end

puts "#{_i} #{_j} #{_k}"