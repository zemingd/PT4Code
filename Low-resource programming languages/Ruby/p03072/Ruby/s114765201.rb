print 'N = '
n = gets.to_i

puts 'input H'
hight = []
n.times do
    hight << gets.to_i
end

max = 0
count = 0
n.times do |i|
    if max <= hight[i]
        count += 1
        max = hight[i]
    end
end

print 'answer = '
puts count