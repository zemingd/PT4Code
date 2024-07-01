n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
a.each do |num|
  ans += (num-(a.inject(:+).fdiv(a.length)))**2
end
puts ans.ceil