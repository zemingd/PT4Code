n = gets.to_i
w = gets.split(" ").map(&:to_i)

class Array
  def s1(t)
    self[0...t].inject(:+)
  end
  
  def s2(t)
    self.inject(:+) - s1(t)
  end

  def s1_minus_s2(t)
    s1(t) - s2(t)
  end
end

abs_nums = []
(1...n).each do |i|
  abs_nums.push((w.s1_minus_s2(i)).abs)
end

puts abs_nums.min