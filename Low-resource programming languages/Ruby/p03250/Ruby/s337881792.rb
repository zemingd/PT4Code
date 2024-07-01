ABC = gets.split.map(&:to_i).sort
puts (ABC[-1].to_s + ABC[-2].to_s).to_i + ABC[0]