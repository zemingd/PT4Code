A, B, C = gets.split.map(&:to_i)

(1..100).each do |i|
  if (i * A) % B == C
    puts 'YES'
    exit
  end
end

puts 'NO'

