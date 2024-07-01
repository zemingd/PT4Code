n = gets.to_i

S = []
n.times do |i|
    s = gets.chomp.chars.sort
    S << s 
end

S.sort!

ans = 0
cnt = 0
n.times do |i|
    
    if i == n - 1 or S[i] != S[i+1]
        ans += (cnt+1)*cnt/2
        cnt = 0
    else
        cnt += 1
    end
end

puts ans