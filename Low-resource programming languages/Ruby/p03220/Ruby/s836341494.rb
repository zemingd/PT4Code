n = gets.chomp.to_i
t, a = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)
arr = []
h.each do |i|
    shiki = t * 1000- i * 6
    arr << shiki
end
arr_2 = []
arr.each do |item|
    kizyun = (item - a * 1000).abs
    arr_2 << kizyun
end
mezirusi = arr_2.min
arr_2.each_with_index do |item ,j|
    if mezirusi == item
        puts j + 1
        break
    end    
end