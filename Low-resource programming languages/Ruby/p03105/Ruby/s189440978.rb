a,b,c = gets.split(" ").map(&:to_i)

if b>=a*c
  puts c
else
  puts b/a
end