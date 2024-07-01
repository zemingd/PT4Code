arr=gets.split.map &:to_i
p 9*arr.max+arr.inject(:+)