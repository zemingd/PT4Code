N = gets.to_i
sum = 0
min = 100
N.times{
    s = gets.to_i
    sum += s
    if s % 10 != 0 && s < min
        min = s
    end
}
warn sum
if sum % 10 == 0
    sum -= min
    if sum % 10 == 0
        sum = 0
    end
end
puts sum
