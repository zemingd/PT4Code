class Integer
  def divisors
    divisor_list = Array.new(0)
    upper_range = self

    if self == 1
      divisor_list << 1
      return divisor_list
    end
    
    for i in 1..self / 2
      if i >= upper_range
        break
      end
      
      if self % i == 0
        divisor_list << i
        if i != self / i
          divisor_list << self / i
        end
        upper_range = self / i
      end
    end

    divisor_list.sort!
  end
end

nums = gets.split.map{|num_str| num_str.to_i}
a = nums[0]
b = nums[1]
c = nums[2]

puts c.divisors.keep_if {|divisor| divisor >= a}.keep_if {|divisor| divisor <= b}.size