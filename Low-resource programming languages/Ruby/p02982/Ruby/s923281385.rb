n,d = gets.split(" ").map(&:to_i)
ary = []
while a = gets
    ary.push(a.split(" ").map(&:to_i))
end

sahen = 0
uhen  = 0
i = 0
j = 1
count = 0

while i < ary.length do
    x1 = ary[i][0].to_i
    y1 = ary[i][1].to_i
    while j < ary.length do
        x2 = ary[j][0].to_i
        y2 = ary[j][1].to_i
        point = (((x1-x2)**2) + ((y1-y2)**2))
        distance = Math.sqrt(point)
        count = count + 1 if distance.to_f - distance.abs.to_i == 0
        j = j + 1
    end
    i = i + 1
    j = i + 1
end

puts count