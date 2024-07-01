N = gets.chomp
P = gets.split.map(&:to_i)

count = 0
min = P[0]

P.each do |i|
  if P[i] <= min
    min = P[i]
    count += 1
  end
end

puts count