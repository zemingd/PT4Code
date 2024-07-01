N = gets.to_i
ary = N.times.map{gets.to_i}
next_btn = 1
N.times do |n|
    next_btn = ary[next_btn - 1]
    if next_btn == 2
        print n + 1
        exit
    end
end
print -1