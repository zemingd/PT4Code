n = gets.to_i
s = Array.new(n){ gets.chomp.chars.sort }.sort

ans = 0
cnt = 0
n.times do |i|
    
    if i == n - 1 or s[i] != s[i+1]
        ans += (cnt+1)*cnt/2
        cnt = 0
    else
        cnt += 1
    end
end

puts ans