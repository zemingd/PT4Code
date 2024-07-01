n = gets.to_i
a = Array.new(n, 0)
np = Math.sqrt(n).ceil
(1..np).each { |x|
  (1..np).each { |y|
    (1..np).each { |z|
      t = x * x + y * y + z * z + x * y + y * z + z * x
      a[t - 1] = a[t - 1].to_i + 1
    }
  }
}
a.take(n).each { puts _1 }