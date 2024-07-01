A,B,C,X = 4.times.map { gets.to_i }
c = 0
(0..A).each do |i|
  (0..B).each do |j|
    (0..C).each do |k|
      c += 1 if i*500 + j*100 + k*50 == X
    end
  end
end
p c