a,b,c = gets.chomp.split.map(&:to_i)

if a * c <= b
  puts c
else
  puts b / a
end