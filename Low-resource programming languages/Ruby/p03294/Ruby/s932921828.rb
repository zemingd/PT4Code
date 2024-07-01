class Array
  def lcm
    self.inject(:lcm)
  end

  def gcd
    self.inject(:gcd)
  end
end

n = gets.to_i
arr = gets.chomp.split(" ").map(&:to_i)

f = 0
lcm = arr.lcm - 1

arr.each do |num|
  f += lcm % num
end

puts f