def plus(a, b)
  c = a*b
  d = 2*a + 2*b
  print c
  print " "
  puts d
end

a,b = gets.split(' ').map(&:to_i)
plus(a,b)