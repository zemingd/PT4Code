k = gets.chomp.to_i
ans = 0
k.times do |i|
  k.times do |j|
    if i % 2 == 0 && j % 2 == 1
      ans += 1
    end
  end
end
p ans
