a,b,c = gets.split(" ").map(&:to_i)
call = 0
while b >= 0 do
    if call >= c
        b = -1
    elsif b >= a
        b = b - a
        call = call + 1
    else
        b = -1
    end
end

puts call