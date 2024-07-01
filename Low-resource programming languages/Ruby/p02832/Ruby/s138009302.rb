brocks_len = gets.to_i
brocks = gets.split(' ').map!(&:to_i)

crash_count = 0
target_num = 1

unless brocks.index(target_num)
    puts -1
    return
end

while !brocks.empty? do
    i = brocks.index(target_num)
    unless i
        crash_count += brocks.size
        break
    end
    
    brocks.shift(i + 1)
    crash_count += i
    target_num += 1
end

puts crash_count
