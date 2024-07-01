require 'pp'

h = gets.chomp!.to_i

cnt = 0
while h > 0
    h /= 2
    cnt +=1
end

puts (2 ** cnt) - 1
