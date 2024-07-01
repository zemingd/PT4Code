n = gets.to_i

s = []
sum = 0
n.times do
    s << gets.to_i
    sum += s.last
end

if sum % 10 == 0
    s.sort!.each do |e|
        next if e % 10 == 0
        sum -= e
        break
    end

    if sum % 10 == 0
        puts "0"
    else
        puts sum
    end
else
    puts sum
end