class Array
  def lcm
    inject(:lcm)
  end

  def gcd
    inject(:gcd)
  end
end

N, M = gets.split(' ').map(&:to_i)
nums = gets.split(' ').map(&:to_i).uniq
p nums
lcm = nums.lcm
puts lcm
if M >= lcm.div(2)
  puts (M-lcm.div(2)).div(lcm)+1
else
  puts 0
end