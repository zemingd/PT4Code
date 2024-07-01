N = gets.chomp.to_i

(1..N).each do |_i|
  n = Math.sqrt(N)
  count = 0
  (1..n).each do |x|
    (1..n).each do |y|
      (1..n).each do |z|
        count += 1 if (x**2 + y**2 + z**2 + x * y + y * z + x * z) == _i
      end
    end
  end
  puts count
end