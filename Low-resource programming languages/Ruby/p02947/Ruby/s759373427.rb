n = gets.to_i
s = (1..n).map{gets.split.map{|i|i.split("").sort}}

# s.each{|e|p e}
cnt = 0
n.times{|i|
    cnt += s[i+1...n].count(s[i])
}
p cnt