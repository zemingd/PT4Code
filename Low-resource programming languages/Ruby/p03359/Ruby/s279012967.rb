A, B = gets.split(' ').map(&:to_i)
i = 0

for a in 1..(A - 1)
  for b in 1..31
    if a == b
      i += 1
    end
  end
end

for b in 1..B
  if A == b
    i += 1
  end
end

puts i