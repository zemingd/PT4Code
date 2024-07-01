n, k = gets.chomp.split.map(&:to_i)
a_n = gets.chomp.split.map(&:to_i)

(k - 1).upto(n - 1) do |i|
  if i >= k
    puts(a_n[i-k] < a_n[i] ? 'Yes' : 'No')
  end
end