n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
a = a.sort
INF = (10 ** 6)
arr = Array.new(INF+1,0)
a.each do |i|
    sa = i
    while i < 10 ** 6 - sa
        arr[i+1] += 1 
        i += sa
    end
    arr[i+1] += 1
end
count = 0
a.each do |i|
    if arr[i+1] == 1
        count += 1
    end
end
puts count