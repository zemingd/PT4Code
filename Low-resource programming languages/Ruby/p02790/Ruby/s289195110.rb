a,b=gets.split.map(&:to_i)

if a < b
  puts (a.to_s*b)
else
  puts (b.to_s*a)
end