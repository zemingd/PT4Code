n = gets.to_i
hs = gets.split(' ').map{|h|h.to_i}

max = 0
counter = 0
hs.each do | h |
  if h >= max
    max = h
    counter += 1
  end
end
puts counter