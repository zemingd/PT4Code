n,y = gets.split(" ").map(&:to_i)
ans = "-1 -1 -1" 

for c in 0..2000 do
b = (10000*n-9000*c- y)/5000
if y == 10000*(n-b-c) + 5000*b + 1000*c  && n-b-c >= 0 && b >= 0
    ans = (n-b-c).to_s + " " + b.to_s + " " + c.to_s
    break
end
end
puts ans