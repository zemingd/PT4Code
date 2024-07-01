n = gets.chomp.to_i

dt = 100000

n.times do
  dt = dt * 1.05
  if money % 1000 > 0
    dt = dt.ceil(-3)
  end
end

puts dt

