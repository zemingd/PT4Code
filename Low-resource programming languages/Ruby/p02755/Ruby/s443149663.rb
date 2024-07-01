a,b = gets.split.map(&:to_f)

n = 1
while n <= 100 do
    if (n*0.08).floor == a && (n*0.1).floor == b then
        x = n
        break
    end
    n+=1
end
if x != nil then
    p x
else
    p -1
end