n = gets.to_i

nums = n.times.with_object(Hash.new(0)) do |_, h|
  i = gets.to_i
  h[i] += 1
end

puts nums.values.count { |v| v.odd? }
