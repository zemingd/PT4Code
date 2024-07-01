S = gets.chomp
ans = 0
len = 0
S.chars do |c|
    if ['A', 'C', 'G', 'T'].include?(c)
        len += 1
    else
        len = 0
    end
    ans = [ans, len].max
end
puts ans