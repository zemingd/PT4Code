X, N = gets.split.map &:to_i
p_array = gets.split.map &:to_i
#puts p_array
array =[*1..10]
not_include_p =  array - p_array # sa syuugou
tag = 100
min = 100

not_include_p.each { |n|
  sa = (n-X).abs
  if min > sa
    min = sa
    tag = n
  end
} if N != 0

puts N == 0 ? X : tag 
