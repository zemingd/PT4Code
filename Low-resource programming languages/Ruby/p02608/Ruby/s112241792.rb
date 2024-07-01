n = gets.to_i
(1..n).each do |p|
  l = []
  pi = Math.sqrt(p).ceil
  (1..pi).each { |x|
    (1..pi-x).each { |y|
      (1..pi-x-y).each { |z|
        next unless x * x + y * y + z * z + x * y + y * z + z * x == p
        l << [x, y, z]
      }
    }
  }
  pp l.uniq.count
end