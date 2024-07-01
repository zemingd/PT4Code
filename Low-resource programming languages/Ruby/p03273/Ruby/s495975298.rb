H, W = gets.split(" ").map(&:to_i)
masu = []
H.times do 
    tmp = gets.chomp.split("")
    if tmp.count(".") != tmp.size
        masu << tmp
    end
end
if masu.size > 1
    masu = masu.transpose
    W.times do |i|
        if masu[i].count(".") == masu[i].size
            masu[i] = "x"
        end
    end
    masu.delete("x")
    
    masu = masu.transpose.map{|x| x.join()} 
    puts masu
else
    masu.flatten!
    masu.delete(".")
    puts masu.join()
end
