n = gets.to_i
ary = gets.split(' ').map(&:to_i)
res = []
(0...n).each{|i|
  res << ary[i]
  res.reverse!
}
puts res.join(' ')