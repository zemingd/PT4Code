class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

n = gets.to_i
a = gets.chomp.split.map(&:to_i)
a.freeze

array = []
n.times do |i|
  b = a.dup
  b.delete_at(i)
  array.push(b.gcd)
end

p array.max



