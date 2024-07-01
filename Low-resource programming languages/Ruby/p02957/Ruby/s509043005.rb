a,b = gets.split.map &:to_i
x = (a+b)/2.0
puts x.to_s.split('.')[-1].to_i.zero? ? x.to_i : :IMPOSSIBLE