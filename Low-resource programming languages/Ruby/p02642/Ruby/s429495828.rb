n = gets.to_i
a = gets.split(' ').map(&:to_i)
count = 0
n.times do |i|
    target = a[i]
    ans = a.map{|num| target % num}
    # puts ans, ' '
    count += 1 if ans.count(0) == 1
end
puts count

