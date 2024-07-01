n, m = gets.split.map(&:to_i)
ans = *(1..m)
n.times{
    _, *a = gets.split.map(&:to_i)
  	ans &= a
}
p ans.size