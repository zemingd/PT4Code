masu = []
H.times do 
    tmp = gets.split("")
    if tmp.include?(".") && tmp.include?("#")
        masu << tmp
    end
end
masu = masu.transpose 
W.times do |i|
    if masu[i].count(".") == masu[i].size
        masu[i] = "x"
    end
end
masu.delete("x")

masu = masu.transpose.map{|x| x.join()} 
puts masu