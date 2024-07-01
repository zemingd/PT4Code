N, M, K = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
time, ans = 0, 0

tmpa = a.shift 
tmpb = b.shift 

c = []
until tmpa.nil? || tmpb.nil?
    if tmpa <= tmpb 
        c << tmpa 
        tmpa = a.shift 
    else
        c << tmpb 
        tmpb = b.shift 
    end
end
if a.empty?
    c << tmpb
    c += b
else
    c << tmpa
    c += a
end
p c
while time < K do
    time += c.shift
    ans += 1 if time <= K
    break if c == []
end

puts ans