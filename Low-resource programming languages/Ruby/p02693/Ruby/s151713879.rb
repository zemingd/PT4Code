input = readlines()

target = input.shift().chomp.to_i
list = input.shift().chomp.split("\s").map{|x| x.to_i}

found = false
(list[0]..list[1]).each do |n|
  found = true if target % n == 0
  break if found
end

puts found == true ? 'OK' : 'NG'