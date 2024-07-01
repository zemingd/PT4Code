input = readlines()
a, b = input.shift().chomp.split("\s").map{|x| x.to_i}

if a >= 13
  puts b
elsif a > 5
  puts b / 2
else
  puts 0
end
