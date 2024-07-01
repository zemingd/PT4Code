n=gets.chop.to_i
d=gets.chop.split.map(&:to_i)

ans=0

d.combination(2) {|a, b|
  ans += a*b
}
puts ans
