n,m = gets.split(" ").map(&:to_i)
count = 0
min = n
max = 0

m.times do
    a,b = gets.split(" ").map(&:to_i)
    if [a,b].min < min || [a,b].max > max 
        min = [a,b,min].min
        max = [a,b,max].max
        count += 1
    end
end



puts count