a,b=gets.split.map &:to_i
puts (a<6 ? 0 : 6<=a && a<=12 ? b/2 : b)
