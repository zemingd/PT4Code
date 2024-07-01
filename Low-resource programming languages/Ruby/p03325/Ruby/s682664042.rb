n = gets.to_i
a = gets.split.map(&:to_i)

res = a.map do |i|
  i.to_s(2)[/0*\z/].size
end
p res.inject(:+)