s = gets.chomp.chars

if s.all?(?R)
    p 3
elsif s.count(?S) == 1 && s[1] != ?S
    p 2
else
    p s.include?(?R) ? 1 : 0
end