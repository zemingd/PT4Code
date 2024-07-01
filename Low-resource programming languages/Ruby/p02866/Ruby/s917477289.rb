def ppow(x, n)
    return 1 if n == 0
    a = 1
    n.times do
        a = (a * x) % 998244353
    end
    return a
end

n = gets.to_i
d = gets.split.map(&:to_i)

if d[0] != 0 || d[1..-1].include?(0)
    puts 0
    exit
end

c = []
max = 0
d.each do |x|
    a = c[x] || 0
    c[x] = a + 1
end

if c.include?(nil)
    puts 0
    exit
end

ans = 1
prev = 1
c.each do |n|
    ans *= ppow(prev, n)
    ans %= 998244353
    prev = n
end

puts ans
