border = [4,8,12]
ary = []
for i in 1..15 do
    ary.push([].fill(0,0,10)) 
end

n = gets.to_i

n.times{
    b, f, r, v = gets.split.map(&:to_i)
    i = 4*(b-1) + f - 1
    j = r - 1
    ary[i][j] += v
}

for i in 1..15 do
    if border.include?(i) then
        puts "#"*20
    else
        puts " " + ary[i-1].join(" ")
    end
end

