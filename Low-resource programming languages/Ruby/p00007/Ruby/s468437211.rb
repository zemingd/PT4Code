n = gets.to_i

pr = 100
n.times do
  pr = (pr*1.05).ceil
end

puts "#{pr*1000}"