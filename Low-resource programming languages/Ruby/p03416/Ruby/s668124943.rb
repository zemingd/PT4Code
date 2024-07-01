a, b = gets.split.map(&:to_i)

ans = 0
a.upto(b).each{|i|
    ans += 1 if i.to_s == i.to_s.reverse
}
puts ans
