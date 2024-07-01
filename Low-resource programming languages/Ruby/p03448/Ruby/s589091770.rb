a = gets.to_i + 1
b = gets.to_i + 1
c = gets.to_i + 1
x = gets.to_i
cnt = 0

a.times do |i|
  b.times do |j|
    c.times do |k|
      cnt += 1 if 500*i + 100*j + 50*k == x
    end
  end
end
puts cnt
