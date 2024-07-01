weathres = gets.strip.split('').map(&:to_s)
count = 0
temp = ""
weathres.each_with_index do |w,i|
    if i == 0 and w == 'R' then
        count += 1
        next
    end
    if w == 'R' and w == w[i-1] then
        count += 1
    end
end
puts count