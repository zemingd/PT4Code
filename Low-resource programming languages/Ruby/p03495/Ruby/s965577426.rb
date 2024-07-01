n,k = gets.chomp.split.map(&:to_i)
balls = {}
as = gets.chomp.split
as.each do |a|
    !balls[a] ? balls[a] = 1 : balls[a] += 1
end

c = balls.values.sort.reverse
p [(n - c[0..k-1].inject(:+)),0].max