n = gets.to_i
a = gets.split(' ').map(&:to_i)

s = Array.new(n, 0)

a.each do |i|
        s[i] += 1
end

s.shift
s.each do |i|
        puts i
end