n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
arr = Array.new((10 ** 6)+1,0)
a.each do |i|
    next if arr[i] == 2 
    sa = i
    until i > 10 ** 6 
        arr[i] += 1 
        i += sa
    end
end
count = 0
a.each do |i|
    count += 1 if arr[i] == 1
end
puts count