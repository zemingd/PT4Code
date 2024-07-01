n, k = gets.split.map &:to_i
ret = 0
n.times{|i|
    s = i>k ? 0 : ( Math.log(k.to_f/(i+1)) / Math.log(2) ).ceil
    ret = ret + 0.5**s
}
p ret / n