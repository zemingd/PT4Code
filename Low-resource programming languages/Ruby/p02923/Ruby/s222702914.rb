i = gets.to_i
ary = gets.split(" ").map(&:to_i)
count = 0
sum = 0
(i-1).times do |n|
    if ary[n]>= ary[n+1]
        count +=1
    else
        count =0
    end
    if sum<count
        sum =count
    end
end
puts sum