a = gets.split
x = []
while k = a.shift
    l = x.length
    case k
    when "+" then
        x[l-2] = x[l-2] + x[l-1]
        x.pop
    when "-" then
        x[l-2] = x[l-2] - x[l-1]
        x.pop
    when "*" then
        x[l-2] = x[l-2] * x[l-1]
        x.pop
    else
        x.push(k.to_i)
    end
end

puts x
