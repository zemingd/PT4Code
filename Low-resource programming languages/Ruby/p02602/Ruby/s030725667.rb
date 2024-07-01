n, k = gets.chomp.split.map(&:to_i)
a_n = gets.chomp.split.map(&:to_i)

results = []

(k - 1).upto(n - 1).with_index(0) do |i, j|
  results << a_n[i-k+1..i].reduce(1) { |res, item| res * item }
  if i >= k
    puts(results[j-1] < results[j] ? 'Yes' : 'No')
  end
end