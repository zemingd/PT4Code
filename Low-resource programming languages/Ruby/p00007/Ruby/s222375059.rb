def apply(v)
  v = v * 1.05
  v = v + (1000-(v%1000)) if (v%1000 != 0)
  v
end

v = 100000
n = gets.chomp.to_i
n.times do
  v = apply(v)
end
puts v.to_i