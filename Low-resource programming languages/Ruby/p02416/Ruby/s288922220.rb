nums=[]
while true
    l=gets.chop.split("").map(&:to_i)
    if l[0]==0
        break
    else
        nums<<l
    end
end
nums.each do |n|
    p n.inject{|a,b|a+b}
end

