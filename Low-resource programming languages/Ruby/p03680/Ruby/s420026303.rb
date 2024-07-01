N = gets.to_i
as = N.times.map{gets.to_i}
next_i = 0
count = 0
as.each_with_index do |a,i|
    next if next_i != i
    next_i = a - 1
    count += 1
    if next_i == 1
        puts count
        exit
    end
end
puts -1
