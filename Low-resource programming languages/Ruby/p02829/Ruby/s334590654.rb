input = readlines()
# x, t = input.shift().chomp.split("\s").map{|x| x.to_i}

a = input.shift.chomp.to_i
b = input.shift.chomp.to_i

l = [a, b].sort

if l[0] == 1 && l[1] == 2
  puts 3
elsif l[0] == 1 && l[1] == 3
  puts 2
else
  puts 1
end
