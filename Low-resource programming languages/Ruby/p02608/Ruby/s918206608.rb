n = gets.to_i
(1..n).each do |p|
  l = []
  pi = Math.sqrt(p).ceil
  (1..pi).each { |x|
    next if x * x + 2 * x + 3 > p
    (1..pi-x).each { |y|
      next if x * x + y * y + 1 + x * y + y + x > p
      (1..pi-x-y).each { |z|
        next unless x * x + y * y + z * z + x * y + y * z + z * x == p
        l << [x, y, z]
      }
    }
  }
  pp l.uniq.count
end