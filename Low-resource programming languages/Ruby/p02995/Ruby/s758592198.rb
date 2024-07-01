values = gets.split(' ')
a = values[0].to_i
b = values[1].to_i
c = values[2].to_i
d = values[3].to_i

cdLcm = c.lcm(d)
cNum = (b-a)/c
dNum = (b-a)/d
lcmNum = (b-a)/cdLcm

if b%c==0
    cNum = cNum+1
    dNum = dNum+1
end
if b%cdLcm==0
    lcmNum = lcmNum+1
end

num = b - a - cNum - dNum + lcmNum
print("#{num}\n")