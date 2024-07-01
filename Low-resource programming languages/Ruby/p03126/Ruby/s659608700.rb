n, m = gets.split.map(&:to_i)
answers = n.times.map do
  inputs = gets.split
  inputs[1..-1].map(&:to_i)
end

results = (0..m).to_a
answers.each_with_index do |ans, idx|
  results.select! { |r| ans.include?(r) }
end

puts results.count
