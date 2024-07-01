N = gets.to_i
A = gets.chomp.split.map(&:to_i)
Q = gets.to_i
ary = Q.times.map{gets.split.map(&:to_i)}

stack = A
ans = A.sum

(0..Q-1).each do |i|
  x = ary[i][0]
  y = ary[i][1]
  ans += (A.count(x))*(y-x)
  puts ans
  A.map!{|e| e==x ? y : e }
end