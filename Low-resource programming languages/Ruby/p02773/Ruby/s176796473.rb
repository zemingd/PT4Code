N = gets.to_i
S = Hash.new
m = 0
N.times {
    b = gets.chomp
    S[b] = S[b].nil? ? 0 : (S[b] + 1)
    if S[b] > m then m = S[b] end
}

AR = []

for k in S.keys do
    if S[k] == m then AR.push(k) end
end

AR.sort!

for e in AR do
    puts e
end