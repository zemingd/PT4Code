n = gets.chomp.to_i
arr = []
n.times do |i|
    t = gets.chomp.to_i
    arr << t
end
j = arr.shift
arr.each do |i|
    j = j.lcm(i)
end
puts j
