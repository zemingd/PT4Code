array = [1, 2, 3]

A = gets.chop.to_i
B = gets.chop.to_i

leavings = array.reject {
 |n| n == A || n == B
}

puts leavings