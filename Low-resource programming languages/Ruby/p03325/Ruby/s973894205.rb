require 'pp'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i)

count = 0
a_n.each {|x|
    num = x
    while num % 2 == 0
        num = num / 2
        count += 1
    end
}

puts count
