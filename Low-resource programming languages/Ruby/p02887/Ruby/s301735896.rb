i = gets.to_i
ary = gets.split("")
count =0
(0..i-1).each do |n|
    if ary[n] == ary[n+1]
        count +=1
    end
end
puts i-count