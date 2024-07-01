n, y = gets.chomp.split(' ').map(&:to_i)

o_i, o_j, o_k = -1, -1, -1

(0..n).each do |i|
  (0..n-i).each do |j|
    if i * 10000 + j * 5000 + (n - i - j) * 1000 == y
      o_i, o_j, o_k = i, j, (n - i - j)
    end
  end
end

puts "#{o_i} #{o_j} #{o_k}"