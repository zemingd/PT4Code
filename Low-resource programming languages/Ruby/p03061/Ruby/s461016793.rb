class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

n = gets.to_i
a = gets.split(" ").map(&:to_i)

max = 0

n.times do |i|
  b = a.delete_at(i)
  gcd = a.gcd
  max = gcd if max<gcd
  a.insert(i,b)
end
  
p max
