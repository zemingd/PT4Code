n = gets.to_i
f = Array.new(n+1, 10000000)
f[0] = 0
(1..n).each{|i|
    f[i] = ([1] + (1..6).map{|x| 6**x} + (1..5).map{|x| 9**x}).select{|x| x<=i}.map{|x| f[i-x]}.min + 1
}
p f[n]

