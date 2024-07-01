n, k = gets.split.map(&:to_i)
row = gets.chomp
zero = row.split('1').map{|it| it.size}.select{|it| it != 0}
one = row.split('0').map{|it| it.size}.select{|it| it != 0}

one.unshift(0) if row[0] == '0'  # starts with one
zero.push(0) if one.size > zero.size

sums = one.zip(zero).flatten.inject([0]){|acc, it| acc.push(acc[-1] + it)}
range = (k + 1) * 2 - 1
last_index = sums.size - 1

puts (0..last_index).step(2).map{|left|
    right = [left + range, last_index].min
    sums[right] - sums[left]
}.max

