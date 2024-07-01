gets.to_i
brocks = gets.split(' ').map!(&:to_i)

target = 1
crash = 0

unless brocks.index(target)
    puts -1
    return
end

brocks.each do |brock|
    if brock == target
        target += 1
    else
        crash += 1
    end
end

puts crash
