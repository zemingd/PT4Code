n, a, b = gets.split(" ").map(&:to_i)
tr = n * a

if tr < b
  puts tr
else
  puts b
end