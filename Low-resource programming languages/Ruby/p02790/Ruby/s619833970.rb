a,b=gets.chomp.split.map(&:to_i)
if a.to_s * b < b.to_s * a
  puts a.to_s * b
else
  puts b.to_s * a
end