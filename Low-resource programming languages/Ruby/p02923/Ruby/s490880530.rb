n = gets.chomp.to_i
h = gets.chomp.split(' ').map(&:to_i)
h << 10 ** 9 + 1

combo = Array.new(n, 0)
combo.each_with_index do |_, i|
  if h[i] >= h[i + 1]
    combo[i] = 1
    if i > 0
      combo[i] += combo[i - 1]
    end
  end
end

puts combo.max
