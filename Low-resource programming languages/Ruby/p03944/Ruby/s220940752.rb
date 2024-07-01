side,vertical,count = gets.chomp.split(" ")
sidenum = side.to_i
verticalnum = vertical.to_i
countnum = count.to_i

sidelist = []
verticallist = []
(1..sidenum).each do |i|
    sidelist << i
end
(1..verticalnum).each do |i|
    verticallist << i
end

(1..countnum).each do |i|
    a,b,c = gets.chomp.split(" ").map(&:to_i)
    if c == 1
        unless a < sidelist.min
            sidelist.shift(a)
        end
    elsif c == 2
        unless a > sidelist.max
            sidelist.pop(sidelist.max-a)
        end
    elsif c == 3
        unless b < verticallist.min
            verticallist.shift(b)
        end
    elsif c == 4
        unless b > verticallist.max
            verticallist.pop(verticallist.max-b)
        end
    end
end

puts verticallist.length * sidelist.length