A, B, C = gets.split.map(&:to_i)

2.upto(B) do |i|
  if A * i % B == C
    puts 'YES'
    exit
  end
end

puts 'NO'

