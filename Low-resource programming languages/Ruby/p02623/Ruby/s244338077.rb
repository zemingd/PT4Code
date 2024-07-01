n,m,k = gets.chomp.split(" ").map(&:to_i)
a_arr = [0] + gets.chomp.split(" ").map(&:to_i)
b_arr = gets.chomp.split(" ").map(&:to_i) + [10**9]

max = 0
sum_a = 0
sum_b = b_arr.sum
index_b = m + 1
a_arr.each_with_index do |a, i|
  sum_a += a

  if sum_a > k
    break
  elsif sum_a + sum_b <= k
    count = i + index_b
  else
    (index_b-1).downto(0) do |j|
      sum_b -= b_arr[j]
      index_b = j
      break if sum_a + sum_b <= k
    end
    count = i + index_b
  end

  max = count if count > max
end

puts max
