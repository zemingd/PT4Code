h_mass, w_mass = gets.split.map(&:to_i)
h, w = gets.split.map(&:to_i)
puts (w_mass - w) * (h_mass - h)
