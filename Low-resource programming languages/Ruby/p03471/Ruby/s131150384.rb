n, sum = gets.chomp.split.map(&:to_i)

(0..n).each do |x|
  (0..(n - x)).each do |y|
    z = n - x - y
    next if z < 0 || y < 0 || x < 0

    if sum == 10_000 * x + 5_000 * y + 1_000 * z
      puts "#{x} #{y} #{z}"
      exit
    end
  end
end

puts '-1 -1 -1'
