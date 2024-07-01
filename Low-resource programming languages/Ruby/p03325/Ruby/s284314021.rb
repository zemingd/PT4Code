N = gets.to_i
A = gets.split.map(&:to_i)

puts A.map {|a|
  i = 0
  while a%2==0
    a /= 2
    i += 1
  end
  i
}.inject(&:+)
