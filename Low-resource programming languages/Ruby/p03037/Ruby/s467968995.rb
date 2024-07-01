n, m = gets.split(' ')
n = n.to_i
m = m.to_i
 
s, g = gets.split(' ')
s = s.to_i
g = g.to_i
(m-1).times do
    l, r = gets.split(' ')
    l = l.to_i
    r = r.to_i
    if g < l || r < s then
        break
    elsif l <= s then
        if r <= g then
            g = r
        end
    elsif s <= l then
        if r <= g then
            s = l
            g = r
        else
            s = l
        end
    end
end
 
print g-s+1