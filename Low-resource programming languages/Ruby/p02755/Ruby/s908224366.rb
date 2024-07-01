A, B = gets.split.map(&:to_i)

for i in 1..10000
  if A == (i * 0.08).to_i && B == (i * 0.1).to_i
    puts i
    exit
  end
end
puts -1
