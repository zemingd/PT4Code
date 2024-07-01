AB = gets.split.map(&:to_i)

for i in 1..10000
  if (i * 0.08).to_i == AB[0] && (i * 0.1).to_i == AB[1]
    puts i
    exit
  end
end
puts -1