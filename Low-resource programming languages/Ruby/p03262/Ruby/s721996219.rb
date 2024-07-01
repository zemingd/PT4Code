class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

n, init = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)
x << init
x.sort!
# 全部の値の距離を出して、最大公約数を求める
ds = []
x.size.times do |i|
  next if i == 0
  ds << (x[i-1] - x[i]).abs
end
puts ds.gcd

