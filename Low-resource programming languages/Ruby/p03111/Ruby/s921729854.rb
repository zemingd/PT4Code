N, A, B, C = gets.split.map(&:to_i)
L = N.times.map { gets.to_i }

def calc_cost(v, list, c = 0)
  cost = c

  c1 = list.map { |i| (v - i).abs }.min + cost
  n = list.size

  c2 = if n > 1
         min_diff = Float::INFINITY
         min_pair = []

         [*0..(n-1)].combination(2) do |i, j|
           a = list[i]
           b = list[j]
           diff = (v - (a + b)).abs

           if min_diff > diff
             min_diff = diff
             min_pair = [i, j]
           end
         end

         nl = [list[min_pair[0]] + list[min_pair[1]]]

         list.each_with_index do |v, i|
           next if min_pair.include?(i)
           nl << v
         end

         calc_cost(v, nl, c + 10)
       else
         Float::INFINITY
       end

  [c1, c2].min
end

ans = Float::INFINITY

[*1..3].repeated_permutation(N) do |list|
  next if list.uniq.size <= 2

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
