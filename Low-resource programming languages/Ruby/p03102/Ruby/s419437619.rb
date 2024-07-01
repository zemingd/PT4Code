n,m,c = gets.split(' ').map &:to_i
bs = gets.split(' ').map &:to_i
ans = 0
n.times{
  num = 0
  gets.chop.split(' ').each_with_index{ |a, k|
    num += a.to_i * bs[k]
  }
  ans += 1 if num + c > 0
}
p ans
