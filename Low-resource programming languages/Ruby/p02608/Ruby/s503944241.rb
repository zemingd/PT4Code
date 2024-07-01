n = gets.to_i
a = Array.new(n, 0)
np = Math.sqrt(n).ceil
(1..np).each { |x|
  (1..np-x).each { |y|
    (1..np-x-y).each { |z|
      t = case [x, y, z].uniq.count
          when 1
            1
          when 2
            3
          when 3
            6
          end
      a[x * x + y * y + z * z + x * y + y * z + z * x - 1] = t
    }
  }
}
a.take(n).each { puts _1 }