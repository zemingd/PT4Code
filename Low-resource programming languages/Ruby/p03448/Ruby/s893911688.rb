A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

count = 0

for a in 0..A
  for b in 0..B
    c = (X - 500*a - 100*b) / 50
    if c >= 0 && c <= C
      count += 1
    end
  end
end

p count
