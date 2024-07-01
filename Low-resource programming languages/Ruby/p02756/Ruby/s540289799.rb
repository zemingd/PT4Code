s = gets.chomp
q = gets.to_i
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ")
end
t = 0
array=[s]
arr.each{|item|
    if item[0] == "1"
        t +=1
    else
        if (item[1].to_i + t )%2 == 1 then
            array.unshift(item[2])
        else
            array.push(item[2])
        end
    end
}
if t%2==1 then
    array.reverse!
end
array.each{|t|
    print t
}