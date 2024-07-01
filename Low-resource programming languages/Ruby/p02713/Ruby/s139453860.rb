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
k.times do |i|
  k.times do |j|
    k.times do |k|
      sum += [i,j,k].gcd
    end
  end
end
puts sum
