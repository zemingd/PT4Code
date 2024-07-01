n = gets.chomp.to_i
line = gets.chomp.split('')
cnt_min = n
cnt = 0
n.times do |i|
    n.times do |j|
        next if i == j
        if i < j
            cnt += 1 if line[j] == 'E'
        else
            cnt += 1 if line[j] == "W"
        end
    end
    cnt_min = cnt if cnt < cnt_min
    cnt = 0
end

puts(cnt_min)