@n, @k = gets.split.map(&:to_i)

@dp = Array.new(100100, 1<<60)

x = gets.chomp.split.map(&:to_i)

@h = Array.new(100_100, 0)
@n.times do |i|
  @h[i] = x[i]
end

@dp[0] = 0
@n.times do |i|
  (1..@k).each do |j|
    v = @dp[i] + (@h[i] - @h[i+j]).abs
    @dp[i+j] = v if @dp[i+j] > v
  end
end

puts @dp[@n-1]
