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
    a,b,c = gets.chomp.to_i
    if c == 1
        verticallist.shift(a)
    elsif c == 2
        verticallist.pop(a)
    elsif c == 3
        sidelist.shift(a)
    elsif
        sidelist.pop(a)
    end
end

puts sidelist.length * verticallist.length