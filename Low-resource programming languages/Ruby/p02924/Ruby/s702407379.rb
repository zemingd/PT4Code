class Range
  def sum
    result = 0
    self.each { |x| result += x }
    result
  end
end

n = gets.to_i
puts n == 1 ? 0 : (1..n-1).sum
