n, m = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(m+1,0)
n.times do |i|
    a = gets.chomp.split(" ").map(&:to_i)
    ni = a.shift
    a.each do |j|
        arr[j] += 1
    end

end
#p arr
count = 0
arr.each do |l|
    if l == n
        count += 1
    end
end
puts count