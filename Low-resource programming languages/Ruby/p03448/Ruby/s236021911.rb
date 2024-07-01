a, b, c, x = gets.to_i, gets.to_i, gets.to_i, gets.to_i
cnt = 0

(a+1).times do |i|
  (b+1).times do |j|
    (c+1).times do |k|
      cnt += 1 if i * 500 + j * 100 + k * 50 == x
    end
  end
end

puts cnt