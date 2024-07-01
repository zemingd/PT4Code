n = gets.to_i
d = gets.split.map(&:to_i)
if d[0] != 0
    ans = 0
else
    prev = d.count(1)
    _max = d.max
    ans = 1
    2.upto(_max) do |i|
        now = d.count(i)
        ans = ans * (prev ** now)
        prev = now
        now = 0
    end
end
puts ans