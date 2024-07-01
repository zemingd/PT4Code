side,vertical,count = gets.chomp.split(" ")
sidenum = side.to_i
verticalnum = vertical.to_i
countnum = count.to_i

sidelist = []
verticallist = []
(0..sidenum).each do |i|
    sidelist << i
end
(0..verticalnum).each do |i|
    verticallist << i
end

(1..countnum).each do |i|
    a,b,c = gets.chomp.split(" ").map(&:to_i)
    if c == 1
        if a >= sidelist.min
             sidelist.shift(a-sidelist.min)
        end
    elsif c == 2
        if a <= sidelist.max
            sidelist.pop(sidelist.max-a)
        end
    elsif c == 3
        if b >= verticallist.min 
             verticallist.shift(b-verticallist.min)
        end
    elsif c == 4
        if b <= verticallist.max
            verticallist.pop(verticallist.max-b)
        end
    end
end

total = (verticallist.length-1) * (sidelist.length-1)
if total >= 0
    puts total
else
    puts 0
end