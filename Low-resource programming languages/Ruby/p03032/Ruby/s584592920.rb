n, k = gets.split(' ').map(&:to_i)
d = gets.split(' ').map(&:to_i)
max = 0
(0..[n, k].min).each do |i|
  (0..i).each do |j|
    picked = d.slice(0, (i - j)) + d.slice((n - j), j)
    picked.sort!
    sum = 0
    picked.each_with_index do |v, l|
      sum += v if v >= 0 || l >= (k - i)
    end
    max = [sum, max].max
  end
end
puts max