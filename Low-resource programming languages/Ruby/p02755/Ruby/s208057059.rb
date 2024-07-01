i = gets.chomp.split(" ").map(&:to_i)
t = 1
until ((t*0.08).floor == i[0] and (t*0.1).floor == i[1]) or t>=1001 do
    t+=1
end
if t==1001 
    puts "-1"
else
    puts t
end