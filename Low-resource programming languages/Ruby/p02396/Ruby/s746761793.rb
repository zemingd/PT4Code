1.step(10_000) do |i|
  n = gets.chomp.to_i
  break if n.zero?
  puts "Case #{i}: #{n}"
end