while true

num = gets.split.map(&:to_i)

if num[0] == 0 && num[1] == 0
    break
end

num[0].times {
    puts "#"*num[1]
}
print "\n"
end