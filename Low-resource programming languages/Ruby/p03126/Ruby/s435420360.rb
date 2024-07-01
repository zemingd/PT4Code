A, B = gets.split.map(&:to_i)
ans = *(1..B)
A.times{
    z, *a = gets.split.map(&:to_i)
  	ans &= a
}
puts ans.size