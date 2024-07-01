a=gets.split.map &:to_i
p a.max*(2**gets.to_i-1)+a.inject(:+)
