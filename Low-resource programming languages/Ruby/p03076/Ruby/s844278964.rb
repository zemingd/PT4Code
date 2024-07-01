order_times = []
n = 0
x = 0
5.times do
    order_times << gets.chomp.to_i
end

order_times.sort!{|a,b|b%10<=>a%10}


order_times.each do |a|
    if x == 4
        break
    end

    if (n + a)%10 == 0
        n = (n + a)
    else
        m = (n + a)%10
        o = 10 - m
        n = n + a + o
    end
    x += 1
end

if n + order_times[4] == 0
    puts n
else
    puts order_times[4] + n
end