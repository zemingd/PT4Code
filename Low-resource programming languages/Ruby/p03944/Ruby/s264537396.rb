side,vertical,count = gets.chomp.to_i

sidelist = []
verticallist = []
(1..side).each do |i|
    sidelist << i
end
(1..vertical).each do |i|
    verticallist << i
end
p sidelist
p verticallist

(1..count).each do |i|
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