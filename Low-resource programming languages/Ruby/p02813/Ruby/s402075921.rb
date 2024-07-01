N = gets.to_i
i = 0
array = []
N.times{
  array << i+1
  i += 1
}

next_array = array.permutation(N).to_a.sort

P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)
Pnum = next_array.index(P) + 1
Qnum = next_array.index(Q) + 1

puts (Pnum - Qnum).abs

