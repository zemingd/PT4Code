a, b = gets.split(" ")
if a.to_i > b.to_i
  puts b.to_s * a.to_i
elsif b.to_i > a.to_i
  puts a.to_s * b.to_i
else
  puts a.to_s * b.to_i
end