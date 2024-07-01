A, B = gets.split(' ').map(&:to_i)
i = 0

for a in 1..A
  for b in 1..B
    if a == b
      i += 1
    end
  end
end

puts i