n = gets.chomp.to_i

b = []
can = false
n.times do |i|
    b[i] = gets.chomp.to_i
end

nx = 0
time = 0
success = false

n.times do
    next unless nx
    nx = b[nx] - 1
    time += 1
    if nx == 1
        success = true
        break
    end
end

if success
    puts time
else
    puts '-1'
end

