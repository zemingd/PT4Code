n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
h = Hash.new(0)

a.each do |i|
    h[i] += 1
    ans += i
end

q = gets.chomp.to_i

q.times do
    b, c = gets.chomp.split(" ").map(&:to_i)
    tmp = h[b]
    h[b] = 0
    h[c] += tmp
    ans = ans - tmp*b + tmp*c
    puts ans
end