n, m = gets.split.map(&:to_i)
as = m.times.map{|i| gets.to_i }

steps = Array.new(n+1, 0)
steps[0] = 1
steps[1] = 1 if steps.size > 1 && !as.include?(1)

(2..n+1).each do |i|
  next if as.include?(i)
  steps[i] = (steps[i-1] + steps[i-2]) % 1_000_000_007
end

p steps[n]
