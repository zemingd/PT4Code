A, B, C = gets.chomp.split("").map(&:to_i)

100.times do |i|
  if (i * A) % B == C
    puts "YES"
    exit
  end
end

puts "NO"