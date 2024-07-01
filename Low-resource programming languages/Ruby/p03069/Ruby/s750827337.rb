n = gets.chomp.to_i
s = gets.chomp

w = 0
b = 0

for i in 1..n do
    if (s[i-1]=='.' and b > 0) 
        w += 1
    elsif (s[i-1]=='#')
        b += 1
    end
end

p [w,b].min