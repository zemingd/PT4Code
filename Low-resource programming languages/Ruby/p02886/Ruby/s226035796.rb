#ABC143B_TAKOYAKI2019.rb
n = gets.to_i
d = gets.split.map(&:to_i)
ans = 0

com = d.combination(2).to_a

com.each do |t|
  ans += t[0]*t[1]
end
puts ans
