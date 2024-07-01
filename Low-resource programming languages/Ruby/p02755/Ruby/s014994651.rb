a, b = gets.split.map(&:to_i)

for i in 1..1010
  if a == (i * 0.08).to_i && b == (i * 0.1).to_i
    puts i
    exit
  end
end
puts -1