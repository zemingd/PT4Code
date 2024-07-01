n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

aa = []
n.times do |i|
  b = a.dup
  b.delete_at(i)
  aa.push(b.gcd)
end
p aa.max
