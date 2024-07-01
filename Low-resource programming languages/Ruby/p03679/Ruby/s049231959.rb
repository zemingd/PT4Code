x, a, b = gets().chomp.split("\s").map{|x| x.to_i}

if a >= b
  puts 'delicious'
elsif b - a <= x
  puts 'safe'
else
  puts 'dangerous'
end