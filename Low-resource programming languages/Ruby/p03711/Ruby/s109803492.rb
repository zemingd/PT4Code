a = [
  [1,3,5,7,8,10,12],
  [4,6,9,11],
  [2],
]
x,y = gets.split.map(&:to_i).map {|i| a.index { |j| j.include?(i) }}
puts(x==y ? "Yes" : "No")
