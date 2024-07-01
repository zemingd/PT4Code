n, m = gets.chomp.split.map(&:to_i)
ab = []
m.times do
    ab << gets.chomp.split.map(&:to_i)
end

ab.sort! {|a, b| (a[0] <=> b[0]).nonzero? || (a[1] <=> b[1])}

a = ab[0][0]
b = ab[0][1]
ans = 1
for i in 1..(m-1) do
    if a <= ab[i][0] && ab[i][1] <= b
        a = ab[i][0]
        b = ab[i][1]
    elsif ab[i][0] < b && b <= ab[i][1]
        a = ab[i][0]
    elsif b <= ab[i][0] 
        ans += 1
        a = ab[i][0]
        b = ab[i][1]        
    end
end
puts ans