n, k = gets.chomp.split.map(&:to_i)
a_n = gets.chomp.split.map(&:to_i)

(k - 1).upto(n - 1).with_index(0) do |i, j|
  if i >= k
    puts(a_n[j-1] < a_n[i] ? 'Yes' : 'no')
  end
end