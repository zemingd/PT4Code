N = gets.to_i

#max = 57
max = 100
a = []
(1..max).each{ |x|
  (1..max).each{ |y|
    (1..max).each{ |z|
      n = x**2 + y**2 + z**2 + x*y + y*z + z*x
      a.push n
    }
  }
}

a2 = a.group_by{|n| n}
(1..N).each{ |n|
  puts a2.fetch(n, []).size
}
