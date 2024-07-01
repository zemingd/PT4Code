N, A, B, C = gets.split.map(&:to_i)
L = N.times.map { gets.to_i }

def calc_cost(v, list)
  sum = list.inject(:+)
  cost = (v - sum).abs + 10 * (list.size - 1)
end

ans = Float::INFINITY

[*0..3].repeated_permutation(N) do |list|
  next if (list & [1, 2, 3]).size <= 2

  listA = list.map.with_index { |c, i| c == 1 ? L[i] : nil }.compact
  listB = list.map.with_index { |c, i| c == 2 ? L[i] : nil }.compact
  listC = list.map.with_index { |c, i| c == 3 ? L[i] : nil }.compact

  costA = calc_cost(A, listA)
  costB = calc_cost(B, listB)
  costC = calc_cost(C, listC)
  cost = costA + costB + costC

  if ans > cost
    ans = cost
  end
end

puts ans
