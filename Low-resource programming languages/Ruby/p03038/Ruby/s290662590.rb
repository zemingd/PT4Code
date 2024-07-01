n,m= gets.split(" ").map(&:to_i)
arra = gets.split(" ").map(&:to_i)
arrb = Array.new
m.times do
    b,c = gets.split(" ").map(&:to_i)
    arrb = arrb + [c]*b
end

arra.sort!
arrb.sort!.reverse!
if n > arrb.length
    arrb = arrb + [0]*(n-arrb.length)
end
ans = 0
for i in 0..n-1 do
    ans += [arra[i],arrb[i]].max
end

puts ans