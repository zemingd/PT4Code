a = gets.chomp.to_i
b = gets.chomp.split(" ").map(&:to_i)

cnt = a/2
upsor = b.sort
dwsor = b.sort {|a, b| b <=> a }

max = upsor.slice(cnt-1)
min = dwsor.slice(cnt-1)

puts (min-max)