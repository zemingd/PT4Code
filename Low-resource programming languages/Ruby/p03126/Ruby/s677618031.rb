n,m = gets.chomp.split.map(&:to_i)

foods = Array.new(m,0)
sum = 0

n.times do |ni|
    line = gets.chomp.split.map(&:to_i)
    line[0].times do |ki|
        foods[line[ki+1]-1]+=1
        if foods[line[ki+1]-1] == n
            sum += 1
        end
    end
end

puts sum