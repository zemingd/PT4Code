i = gets.to_i
ary = gets.split(" ").map(&:to_i)
count =0
(0..i-3).each do |n|
    if ary[n] < ary[n + 1] && ary[n + 1] < ary[n + 2]
            count +=1
    elsif ary[n] > ary[n+1] && ary[n] > ary[n+2]
            count +=1
    end
end
puts count