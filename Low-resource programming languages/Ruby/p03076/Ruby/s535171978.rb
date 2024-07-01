list = Array.new(5,0)
last = 10
lastindex = 0
5.times do | i |
    list[i] = gets.chomp!.to_i
    mod = list[i] % 10
    if last > mod then
        lastindex = i
        last = mod
    end
end

i = 0
time = 0

list.each do | t |
    if i == lastindex then
        time += t
    else
        mod = t % 10
        if mod != 0 then
            mod = 10 - mod
        end
        time += t + mod
    end
    i += 1
end
puts time
