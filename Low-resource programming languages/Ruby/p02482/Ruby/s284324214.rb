a,b  = gets().split(/\s+/)
c = a.to_i
d = b.to_i


if c == d
  puts "#{c} == #{d}"    
elsif(c<d)
  puts "#{c} < #{d}"
else
  puts "#{c} > #{d}"
end