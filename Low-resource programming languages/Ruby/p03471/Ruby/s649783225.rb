n, y = gets.chomp.split.map(&:to_i)

flg = 0
(0..n).each do |i|
  (0..n).each do |j|
    if (9000 * i + 4000 * j == y - 1000 * n) && 0 <= (n - i - j)
      puts "#{i} #{j} #{n - i - j}"
      flg = 1
      break
    end
  end
  break if flg == 1
end

puts '-1 -1 -1' if flg == 0