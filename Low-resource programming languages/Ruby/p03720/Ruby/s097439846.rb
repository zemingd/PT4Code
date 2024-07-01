n, m = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(n).map{Array.new}
m.times do |i|
    a, b = gets.chomp.split(" ").map(&:to_i)
    arr[a-1] << b
    arr[b-1] << a
end
arr.each do |i|
    puts i.size
end
