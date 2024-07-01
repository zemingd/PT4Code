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
if M < nums.min.div(2)
  puts 0
else
  puts (M-lcm.div(2)).div(lcm)+1
end