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
             sidelist.shift(a-sidelist.min+1)
        end
    elsif c == 2
        if a <= sidelist.max
            sidelist.pop(sidelist.max-a+1)
        end
    elsif c == 3
        if b >= verticallist.min 
             verticallist.shift(b-verticallist.min+1)
        end
    elsif c == 4
        if b <= verticallist.max
            verticallist.pop(verticallist.max-b+1)
        end
    end
end

puts verticallist.length * sidelist.length