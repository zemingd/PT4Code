h = Hash.new { |h, k| h[k] = 0 }

gets.to_i.times do
  h[gets.chomp] += 1
end

max = h.values.max
keys = h.keys.select { |k| h[k] == max }
puts keys.sort
