n = gets.chomp.to_i
h = gets.chomp.split(' ').map(&:to_i)

combo = Array.new(n, 0)
(n - 1).times do |i|
  if h[i] >= h[i + 1]
    combo[i] = 1
    combo[i] += combo[i - 1] if i > 0
  end
end

puts combo.max
