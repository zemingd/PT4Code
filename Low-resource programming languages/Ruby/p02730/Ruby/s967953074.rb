s = gets.to_s
zenhan = (s.length-1)/2 - 1
part1 = s[0..zenhan]
kouhan = (s.length+3)/2 - 1
part2 = s[kouhan..s.length]

result = "No"

if s == s.reverse
    if part1 == part1.reverse
        if part2 == part2.reverse
            result = "Yes"
        end
    end
end

puts result