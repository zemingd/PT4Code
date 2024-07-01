a,b,c = gets.split.map(&:to_i)
if a>=b*c
  puts c
else
  puts b/a
end