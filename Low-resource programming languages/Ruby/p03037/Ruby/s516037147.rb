n, m = gets.split(' ')
n = n.to_i
m = m.to_i

l, r = gets.split(' ')
ary = (l.to_i..r.to_i).to_a
tmp = ary
(m-1).times do
    l, r = gets.split(' ')
    ary = (l.to_i..r.to_i).to_a
    tmp = tmp & ary
end

print tmp.length