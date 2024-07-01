n=gets.to_i
L = gets.split.map &:to_i

res = 0
L.combination(3).each do |a,b,c|
  res += 1 if a < b+c && b < c+a && c < a+b
end
puts res
