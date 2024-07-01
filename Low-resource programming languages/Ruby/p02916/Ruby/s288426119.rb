n = gets.to_i
order = gets.split(' ').map(&:to_i)
points = gets.split(' ').map(&:to_i)
extra = gets.split(' ').map(&:to_i)
sum = 0
n.times do |a|
    if a == 0
        sum = sum + points[order[a]-1]
    else 
        if order[a-1] == order[a]-1
            sum = sum + points[order[a]-1] + extra[order[a]-2]
        else
            sum = sum + points[order[a]-1] 
        end
    end
end
puts sum

