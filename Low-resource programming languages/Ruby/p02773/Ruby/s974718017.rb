i = gets.to_i
ary =[]
i.times do |n|
    ary <<  gets.chomp.split(" ")
end
tmp = []
ary.map{|n|
     tmp << [n,ary.count(n)] 
}
tmp.sort!
tmp.uniq!
k = tmp.max[1]

tmp.each do |n|
    if n[1] == k
        puts  n[0]
    end
end