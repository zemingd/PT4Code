input = gets
array = input.split(' ').map! {|item| item.to_i}


X = array[0]
A = array[1]


if X <= A
  p 0
else
  p 10
end