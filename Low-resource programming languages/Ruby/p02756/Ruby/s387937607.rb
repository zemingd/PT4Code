s = gets.chomp
q = gets.to_i
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ")
end
p arr

arr.each{|item|
    if item[0] == "1"
        s.reverse!
    else
        if item[1] == "1" then
            s.insert(0,item[2])
        else
            s<<item[2]
        end
    end
}
puts s