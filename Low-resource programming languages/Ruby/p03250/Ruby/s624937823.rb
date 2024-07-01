def codei
  return gets.split.map &:to_i
end
a,b,c = codei; arr = Array.new
arr = [
  a*10 + b + c,
  a + b*10 + c,
  a + b + c*10
]
puts arr.max
