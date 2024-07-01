n, d = gets.chomp.split.map(&:to_i)
x = Array.new(n)
(0..(n-1)).each do |i|
  x[i] = gets.chomp.split.map(&:to_i)
end
sum = 0
cnt = 0

(0..(n-1)).each do |i|
	((i+1)..(n-1)).each do |j|
      sum = 0
      (0..(d-1)).each do |k|
        sum += (x[i][k] - x[j][k]).abs ** 2
      end
      cnt += 1 if (sum ** (1/2.0)) == (sum ** (1/2.0)).ceil
	end
end
puts cnt