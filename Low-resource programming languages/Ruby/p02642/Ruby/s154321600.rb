n = gets.to_i
a = gets.split.map(&:to_i)
a = a.sort
ans = 0
if a.uniq.length == 1
    puts 0
    exit
end
loop do
    break if a.empty?
    k = a.shift
    ans += 1
    break if a.size == 0
    i = 1
    while k * i <= a[-1]
        a.delete(k * i)
        i += 1
        break if a.size == 0
    end
end
puts ans