s = gets.chomp!

ans = []
s.each_char do |c|
    if c == 'B' then
        ans.pop
    else
        ans << c
    end
end

puts ans.join