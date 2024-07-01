n = gets.to_i
h = gets.split(' ').map(&:to_i)
count = 0
counts = []
if n ==1
    puts 0
else
    (n-1).times do |a|
        if h[a] >= h[a+1]
            count +=1 
        else
            count = 0
        end
        counts << count
    end
    
    puts counts.max
end