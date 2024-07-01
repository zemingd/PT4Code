n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
p = (a.inject(:+).to_f/a.length.to_f)
a.each do |num|
  ans += (num-p)**2
end
puts ans.round