n = gets.chomp.to_i
line = gets.chomp.split(' ').map(&:to_i)
cnt = 0
n.times do |i|
    next if i == 0 || i == n-1
    if line[i-1] < line[i]
        cnt += 1 if line[i] < line[i+1]
    else
        cnt += 1 if line[i] > line[i+1]
    end
end
puts(cnt)