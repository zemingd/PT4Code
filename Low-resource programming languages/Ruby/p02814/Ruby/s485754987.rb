n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
class Array
  def lcm
    num = self.inject do |a,b|
      tmp = a.lcm(b)
      if tmp > 10 ** 10
        puts 0
        exit
      end
      tmp
    end
  end

  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end
lcm = nums.lcm
# m += lcm / 2
# ans = m / lcm
# puts ans

ans = m / (lcm / 2)
ans += 1 if ans.odd?
ans /= 2
puts ans
