n = gets.to_i
t = n.times.map { gets.to_i }
class Array
  def lcm
    self.inject(:lcm)
  end
end
p t.lcm
