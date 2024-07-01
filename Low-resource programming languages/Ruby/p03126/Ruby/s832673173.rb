n, m = gets.split.map(&:to_i)
ans = *(1..m)
n.times{
    ans &= gets.split.map(&:to_i)[1..-1]
}
p ans.size