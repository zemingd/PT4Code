A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

c = 0
(A + 1).times do |i|
  (B + 1).times do |j|
    (C + 1).times do |k|
      if i * 500 + j * 100 + k * 50 == X
        c += 1
      end
    end
  end
end
puts c