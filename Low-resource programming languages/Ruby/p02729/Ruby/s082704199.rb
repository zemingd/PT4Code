N, M = gets.chomp.split.map(&:to_i)

counter = 0

if N >= 2
  (1..N).to_a.combination(2) do |c|
    counter += 1
  end
end

if M >= 2
  (1..M).to_a.combination(2) do |c|
    counter += 1
  end
end

puts counter