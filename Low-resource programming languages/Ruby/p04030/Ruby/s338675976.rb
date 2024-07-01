S = gets.chomp.chars
ans = []
S.each do |s|
    if s == 'B'
        ans.pop
    else
        ans.push(s)
    end
end
puts ans.join