class Array
  def sum
    result =  0
    self.each {|x| result += x}
    result
  end
end

n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
bonus = []
a.each_with_index { |v, i| bonus << v - 1 if a[i + 1] == v + 1}
ans = b.sum
bonus.each {|i| ans += c[i]}
puts ans
