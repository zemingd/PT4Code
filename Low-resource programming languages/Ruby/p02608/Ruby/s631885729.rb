n = gets.chomp.to_i

f = (0..n).map { 0 }

(1..100).each do |x|
  (1..100).each do |y|
    (1..100).each do |z|
      v = x * x + y * y + z * z + x * y + y * z + z * x
      f[v] += 1 if v <= n
    end
  end
end

(1..n).each { |i| puts f[i] }
