x = gets.chomp.to_i
dt = 100000

x.times do
  dt = dt * 1.05
    if dt % 1000 > 0
      dt = dt.ceil(-3)
    end
end

puts dt
