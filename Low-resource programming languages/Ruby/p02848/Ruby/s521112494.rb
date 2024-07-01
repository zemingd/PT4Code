count = gets.chomp.to_i
ss = gets.chomp.chars

ans = []
ss.each do |s|
    count.times do 
        s.succ!
    end
    if s.length == 2
        ans << s[1]
    else
        ans << s
    end
end

puts ans.join('')