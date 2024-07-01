a,b = gets.split.map(&:to_i)

if a == b
  puts a + b
end

if a > b && (a - b) <=2
  puts a + (a-1)
elsif  a > b && (a - b) < 2
  puts a + b
end

if b > a && (b - a) <=2
  puts b + (b-1)
elsif  b > a && (b - a) < 2
  puts b + a
end
