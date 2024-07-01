s = gets.chomp.split
a,b,c = s[0].to_i,s[1],s[2].to_i

while b != '?' do
    case b
    when '+' then
        puts a+c
    when '-' then
        puts a-c
    when '*' then
        puts a*c
    when '/' then
        puts a/c
    end
    s = gets.chomp.split
    a,b,c = s[0].to_i,s[1],s[2].to_i
end