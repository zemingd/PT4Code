gets
s = gets.split

l = []
if s.length % 2 == 1
    (s.length - 1).step(0, -2) do |i|
        l.push s[i]
    end
    1.step(s.length - 1, 2) do |i|
        l.push s[i]
    end
else
    (s.length - 1).step(0, -2) do |i|
        l.push s[i]
    end
    0.step(s.length - 1, 2) do |i|
        l.push s[i]
    end
end

puts l.join(' ')