n, m = gets.split(' ').map(&:to_i)
s = []
m.times do |i|
    k, *ary = gets.split(' ').map{ |x| x.to_i - 1 }
    s << ary
end

p = gets.split.map(&:to_i)

ans = 0
(0..n).each do |j|
    [*0...n].combination(j) do |num|
        ans += 1 if (0...m).all? { |i| (s[i] & num).size % 2 == p[i] }
    end
end
puts ans