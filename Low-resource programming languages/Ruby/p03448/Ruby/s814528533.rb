A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

count = 0

A.times do |i|
  B.times do |j|
    C.times do |k|
      if i * 500 + j * 100 + k * 50 == X
        count += 1 
      end
    end
  end
end

puts count