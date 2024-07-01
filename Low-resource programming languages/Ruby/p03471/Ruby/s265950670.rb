n, y = gets.chomp.split(' ').map(&:to_i)

(0..n).each do |i|
  break if y < i * 10_000
  (0..(n - i)).each do |j|
    break if y < i * 10_000 + j * 5000
    if i * 10_000 + j * 5000 + (n - j - i) * 1000 == y
      puts [i, j, (n - j - i)].join(' ')
      return
    end
  end
end

puts '-1 -1 -1'
