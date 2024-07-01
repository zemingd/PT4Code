def calc(x1, x2, x3, x4, x5)
    if x1 == 0 then
        return 1
    elsif x2 == 0 then
        return 2
    elsif x3 == 0 then
        return 3
    elsif x4 == 0 then
        return 4
    else
        return 5
    end
end

x1, x2, x3, x4, x5 = gets.split.map(&:to_i)
puts calc(x1, x2, x3, x4, x5)