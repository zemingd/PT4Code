N = gets.chomp.to_i
result = [0] * N
(1..100).each do |x|
  (x..100).each do |y|
    (y..100).each do |z|
      nn = x ** 2 + y ** 2 + z ** 2 + x*y + y*z + z*x
      next if nn > N
      uniq_size = [x, y, z].uniq.length
      result[nn - 1] = { 1 => 1, 2 => 3, 3 => 6 }[uniq_size]
    end
  end
end
result.each do |r|
  puts r
end