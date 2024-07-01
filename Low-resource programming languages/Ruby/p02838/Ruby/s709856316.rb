MOD = 10**9 + 7
N = gets.chomp.to_i
a = gets.split.map(&:to_i)
b = Array.new(0)
x = 0
while x < 60
    b.push(x)
    x += 1
end
c = Array.new(60,0)
b.each do |s|
    c[s] = a.inject(0) {|t,u| t+u/2**s%2}
end
b.each do |s|
    c[s] = c[s] * (N-c[s]) * 2**s %MOD
end
answer = c.inject(0) {|t,u| (t+u)%MOD}
puts answer