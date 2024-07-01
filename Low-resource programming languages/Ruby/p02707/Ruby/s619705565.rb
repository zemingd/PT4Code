N = gets.to_i
A = gets.split.map(&:to_i)

counter = Hash.new { |h, k| h[k] = [] }

A.each.with_index(2) do |a, i|
  counter[a] << i
end

puts (1..N).map { |x| counter[x].size }
