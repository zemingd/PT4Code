k = gets.to_i
odd = even = 0
1.upto(k){|x|
    odd += 1 if x.odd?
    even += 1 if x.even?
}
puts odd * even