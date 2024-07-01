N = gets.chomp.to_i
list = []
row = 1
N.times do
    s, p = gets.chomp.split(" ")
    list.push([s, p.to_i, row])
    row += 1
end
list = list.sort_by  {|list| [list[0] , -list[1]]}

list.each do | data |
    puts data[2]
end
