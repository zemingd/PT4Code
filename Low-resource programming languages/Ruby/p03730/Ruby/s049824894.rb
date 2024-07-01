A, B, C = gets.split.map(&:to_i)
(1..B).each do |i|
  if A*i % B == C
    puts 'YES'
    exit(0)
  end
end

puts 'NO'