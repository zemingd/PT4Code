num = gets.split(' ').map(&:to_i).sort.reverse
k = gets.to_i

k.times {
    num[0] = num[0] * 2
}

puts num.inject(:+)