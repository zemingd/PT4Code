A = gets.strip.to_i + 1
B = gets.strip.to_i + 1
C = gets.strip.to_i + 1
X = gets.strip.to_i
count = 0

A.times do |i|
  B.times do |j|
    C.times do |k|
      count += 1 if 500*i + 100*j + 50*k == X
    end
  end
end

puts count