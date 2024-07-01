n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).map{ |i| i / 2 }
class Array
  def lcm
    self.inject{|a,b| a.lcm(b)}
  end

  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end
lcm = nums.lcm
ans = (m / lcm)
if ans.even?
  ans /= 2
else
  ans /= 2
  ans += 1
end 
puts ans
