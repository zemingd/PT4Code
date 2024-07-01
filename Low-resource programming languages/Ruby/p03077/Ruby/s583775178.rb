n = gets.chomp.to_i

vehicles = []
for i in 0..4 do
  vehicles[i] = gets.chomp.to_i
end

puts 4 + (n / vehicles.min.to_f).ceil