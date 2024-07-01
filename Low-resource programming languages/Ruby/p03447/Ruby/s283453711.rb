A = STDIN.gets.to_i
B = STDIN.gets.to_i
C = STDIN.gets.to_i
X = STDIN.gets.to_i

coins500 = (0..A).to_a.map{|i| i*500}
coins100 = (0..B).to_a.map{|i| i*100}
coins50 = (0..C).to_a.map{|i| i*50}

cnt = 0
coins500.each do |i|
  coins100.each do |j|
    coins50.each do |k|
      cnt += 1 if i + j + k == X
    end
  end
end

puts cnt
