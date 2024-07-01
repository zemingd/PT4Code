N = gets.to_i
As = gets.split.map(&:to_i)
orders = Array.new(N) { nil }
As.map.with_index { |a, i| orders[a - 1] = i + 1 }
puts orders.join(" ")
