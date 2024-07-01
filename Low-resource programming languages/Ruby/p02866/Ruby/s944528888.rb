N = gets.to_i
array=gets.chomp.split(" ").map(&:to_i)
if array[0] != 0
    puts 0
    exit
end

grouped = array.group_by{|e| e}
if grouped[0].length != 1
    puts 0
    exit
end

d_max = array.max
ret = 1
(1..d_max).each do |d|
    count = grouped[d].length
    if count == 0
        puts 0
        exit
    end
    count.times do
        ret = ret * grouped[d-1].length
        ret = ret % 998244353
    end
end
puts ret