n = gets.to_i
s = gets.chomp
ans = s.size
ss = s.count("#")
sc = 0
s.size.times do |i| 
    drf = sc + (s.size - i - ss + sc) 
    ans = [ans, drf].min
    if(s[i] == "#")
        sc += 1 
    else

    end
end
p [ans,s.count("#")].min