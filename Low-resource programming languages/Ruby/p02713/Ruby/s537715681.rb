class Array
  def lcm
    self.inject{|a,b| a.lcm(b)}
  end

  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end
k=gets.to_i
sum = 0
k.each do |i|
  k.each do |j|
    k.each do |k|
      sum += [i,j,k].gcd
    end
  end
end
puts sum