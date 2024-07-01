count = STDIN.gets.split(' ')[1].to_i
s = STDIN.gets.chomp
count.times do |c|
    start = STDIN.gets.split(' ').map(&:to_i)
    str = s.slice(start[0] - 1..start[1] - 1)
    result = 0
    str.length.times do |i| 
        if str[i] == 'A' and i + 1 < str.length
            if str[i + 1] == 'C'
                result += 1
            end
        end
    end
    puts result
end
