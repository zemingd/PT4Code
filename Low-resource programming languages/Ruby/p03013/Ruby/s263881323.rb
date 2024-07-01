n, m = gets.split.map(&:to_i)
as = m.times.map{|i| gets.to_i }

steps = Array.new(n+1, 0)
steps[0] = 1

(1..n+1).each do |i|
  next if as.include?(i)
  if i == 1
    steps[i] = 1
  else
    steps[i] = steps[i-1] + steps[i-2]
  end
end

p steps[n] % 1_000_000_007
