gets
a = gets.split.map(&:to_i)
ans = 0
a.combination(2){|x,y| ans += x^y}
p ans
