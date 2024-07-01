N, M = gets.chomp.split(" ").map(&:to_i)
ans = (1..M).to_a
N.times{
  ans &= gets.chomp.split(" ").map(&:to_i)[1..-1]
}

puts ans.size
