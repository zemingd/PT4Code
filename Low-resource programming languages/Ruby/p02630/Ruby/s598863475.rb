n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(100000,0)
ar = arr.size
#p arr
a.each do |i|
    arr[i] = arr[i] + 1
end

q = gets.chomp.to_i
q.times do |j|
    all = 0
    b,c = gets.chomp.split(" ").map(&:to_i)
    until arr[b] == 0
    arr[b] = arr[b] - 1
    arr[c] = arr[c] + 1
    end
    #p arr
    (0..ar-1).each do |o|
        all += arr[o] * o
    end
    puts all
end