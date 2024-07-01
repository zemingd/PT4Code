class Array
  def lcm
    self.inject{|a,b| a.lcm(b)}
  end

  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

array = []

num = gets.to_i

for value in 0...num do
  input = gets.to_i
  array.push(input)
end
p array.lcm
