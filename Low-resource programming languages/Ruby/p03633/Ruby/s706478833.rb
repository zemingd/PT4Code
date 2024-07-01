n = gets.chomp.to_i
Ts = []
n.times do
    Ts << gets.chomp.to_i
end
tmp = Ts[0]
1.upto(n-1) do |i|
    tmp = tmp.lcm(Ts[i])
end
puts tmp