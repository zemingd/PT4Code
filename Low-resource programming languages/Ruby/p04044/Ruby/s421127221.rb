i,t = gets.split(" ").map(&:to_i)
ary =[]
i.times do 
    ary << gets.chomp
end
print ary.sort.join