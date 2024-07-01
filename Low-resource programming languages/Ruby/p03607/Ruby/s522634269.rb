num_count = Hash.new(0)

gets.to_i.times do
  num_count[gets.to_i] += 1
end

puts num_count.values.count(&:odd?)