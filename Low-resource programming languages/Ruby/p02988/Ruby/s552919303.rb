require 'pp'
require 'set'

n = gets.chomp!
p_n = gets.chomp!.split(" ").map(&:to_i)

count = 0
p_n.each_cons(3) {|x|
    y = ([x[0], x[2]].min)..([x[0], x[2]].max)
    if y.include?(x[1])
        count += 1
    end
}

puts count
