A,B,C= gets.split.map(&:to_i)

for i in 1..B do
  if A*i%B == C
    puts 'YES'
    exit
  end
end

puts "NO"
