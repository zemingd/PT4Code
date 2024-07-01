n = gets.to_i
s = gets.chomp
ans = 0
(0..n-2).each{|i|
    x = (s[0..i].chars.sort.uniq & s[i+1..n-1].chars.sort.uniq).length
    ans = [x, ans].max
}
puts ans
