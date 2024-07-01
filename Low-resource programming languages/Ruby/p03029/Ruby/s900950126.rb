input = gets
array = input.split(' ')
array.map! {|item| item.to_i}

A = array[0]
P = array[1]

p (A*3+P)/2.floor