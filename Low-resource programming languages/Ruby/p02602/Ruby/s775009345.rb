N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

(K...N).each do |i|
  puts As[i] > As[i - K] ? "Yes" : "No"
end
