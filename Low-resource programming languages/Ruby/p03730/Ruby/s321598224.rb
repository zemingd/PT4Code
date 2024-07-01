A, B, C = gets.chomp.split.map(&:to_i)

B.times do |i|
  if (i * A) % B == C
    puts "YES"
    break
  end
end

puts "NO"