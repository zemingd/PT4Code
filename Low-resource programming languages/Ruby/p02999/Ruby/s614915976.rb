N, X = gets.split.map &:to_i
L = gets.split.map &:to_i
 
pos = 0
ans = 1
L.each{|l|
  pos += l
  break if pos > X
  ans += 1
}
 
p ans