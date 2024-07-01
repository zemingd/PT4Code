n, m = gets.split.map(&:to_i)
class Integer
  def !
    (1..self).inject(1, :*)
  end
end
puts n.! / ( (n-2).! * 2.! ) + m.! / ( (m-2).! * 2.! )