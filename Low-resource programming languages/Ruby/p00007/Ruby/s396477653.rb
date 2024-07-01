n = gets.to_i

debt = 100_000
n.times do |i|
  debt = ((debt * 1.05 / 1000).ceil) * 1000
end
puts debt