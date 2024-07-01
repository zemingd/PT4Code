num_500 = gets.chomp.to_i
num_100 = gets.chomp.to_i
num_50 = gets.chomp.to_i
tar = gets.chomp.to_i

cnt = 0
(0..num_500).each do |a|
  (0..num_100).each do |b|
    (0..num_50).each do |c|
      result = 500 * a + 100 * b + 50 * c
      cnt += 1 if result == tar
    end
  end
end
puts cnt