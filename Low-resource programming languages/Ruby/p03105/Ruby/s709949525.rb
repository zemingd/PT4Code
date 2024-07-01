a,b,c=gets.chomp.split(" ").map(&:to_i)
if b/a <= c
  puts b/a
else
  puts c
end
