a,b = gets.split(" ").map(&:to_i)
count = 0

2.times do 
    case a <=> b
    when 1 then
        count = count + a
        a = a - 1
    when 0 then
        count = count + a
        a = a - 1
    when -1 then 
        count = count + b
        b = b - 1
    end
end

puts count