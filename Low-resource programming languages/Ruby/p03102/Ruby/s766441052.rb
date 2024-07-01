n, m, c = gets.split.map(&:to_i)
b_m = gets.split.map(&:to_i)
a_m = n.times.map{ gets.split.map(&:to_i) }
ans = 0
a_m.each do |a|
    ans += 1 if a.zip(b_m).map{ |aa, bb| aa * bb }.reduce(:+) + c > 0
end
puts ans