n = gets.to_i
t,a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
s = []
for i in 0..h.length-1
     s << t-h[i]*0.006
end
s << a
s.sort!
if a != s[s.length-1] || a != s[0]
   min = [a - s[s.index(a) - 1],s[s.index(a) + 1] - a].min
    min = 500*(min-t)/3
    puts  h.index(min).to_i + 1
    
elsif a == s[0]
    min = s[1]-a
    min = 500*(min-t)/3
    puts h.index(min).to_i + 1
else
    min = a - s[s.length-2]
    min = 500*(min-t)/3
    puts h.index(min).to_i + 1
end