N = gets.to_i
ary = []
sum, longest, time = 0, 0, 0
flag = 1

N.times do |i|
    a, b = gets.chomp.split(" ").map(&:to_i)
    ary << [a, b]
    sum += a
    longst = b if b > longest
end

if longest > sum 
    puts "No"
else
    ary.sort_by! {|a| a[1]}
    ary.each do |a|
        time += a[0]
        flag = -1 if time > a[1]
    end
    if flag == 1
        puts "Yes"
    else
        puts"No"
    end    
end
