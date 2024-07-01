n, K = gets.chomp.split.map(&:to_i)
h_n = gets.chomp.split.map(&:to_i)

results = []
n.times do |_|
  results << Float::INFINITY
end

results[0] = 0

h_n.each.with_index(0) do |h_i, i|
  next if i == h_n.length - 1

  1.upto(K) do |k|
    next if h_n[i+k].nil?
    next if results[i+k].nil?

    cost_to_next_k = results[i] + (h_n[i+k] - h_i).abs
    results[i+k] = cost_to_next_k if results[i+k] > cost_to_next_k
  end
end

puts results[-1]