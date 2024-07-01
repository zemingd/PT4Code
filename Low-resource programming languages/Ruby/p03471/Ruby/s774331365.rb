n, y = gets.split.map(&:to_i)
key = 0
(0..n).each do |i|
  break if y > n * 10000
  break if y < i * 10000
  (0..(n-i)).each do |j|
    break if y < i * 10000 + j * 5000
    break if y > i * 10000 + (n-i) * 5000
    k = n - i - j
    if y == ( i * 10000 + j * 5000 + k ** 1000 )
      puts i.to_s + " " + j.to_s + " " + k.to_s
      key = 1
      break
    end
  end
  break if key == 1
end

puts "-1 -1 -1" if key == 0
