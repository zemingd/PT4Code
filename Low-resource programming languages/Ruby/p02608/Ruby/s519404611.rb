N = gets.to_i

a = []
(1..57).each{ |x|
  (1..57).each{ |y|
    (1..57).each{ |z|
      n = x**2 + y**2 + z**2 + x*y + y*z + z*x
      a.push n
    }
  }
}

a2 = a.group_by{|n| n}
(1..N).each{ |n|
  puts a2.fetch(n, []).size
}
