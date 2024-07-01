n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
class Array
  def lcm
    self.inject{|a,b| a.lcm(b)}
  end

  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end
lcm = nums.lcm
m += lcm / 2
ans = m / lcm
puts ans
