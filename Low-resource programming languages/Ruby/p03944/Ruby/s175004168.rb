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
        sidelist.shift(a)
    elsif c == 2
        sidelist.pop(sidenum-a)
    elsif c == 3
        verticallist.shift(b)
    elsif c == 4
        verticallist.pop(verticalnum-b)
    end
end

puts verticallist.length * sidelist.length