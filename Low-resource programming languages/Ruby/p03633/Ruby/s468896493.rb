def lcm(x,y)
  x.lcm y
end
puts gets.to_i.times.map{gets.to_i}.inject(&:lcm)