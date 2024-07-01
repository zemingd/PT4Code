n = gets.to_s.to_i
t = Array.new(n){ gets.to_s.to_i }

ans = t.reduce(1){|l,c| l.lcm(c)}

puts ans