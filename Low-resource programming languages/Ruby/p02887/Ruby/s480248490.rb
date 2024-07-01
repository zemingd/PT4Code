N = gets.chomp.to_i
slimes = gets.chomp
a = 0
total = 0
 
N.times do
    if slimes[a] != slimes[a+1]
        total += 1
    end
    
    a += 1
end
 
puts total