class Array
  def lcm
    inject(:lcm)
  end
end

n=gets.to_i
ts=n.times.map{gets.to_i}
puts ts.lcm
