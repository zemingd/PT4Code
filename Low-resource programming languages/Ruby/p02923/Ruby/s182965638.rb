n = gets.to_i
h = gets.split(' ').map(&:to_i)
count = 0
counts = []
(n-1).times do |a|
    if h[a] >= h[a+1]
        count +=1 
    else
        count = 0
    end
    counts << count
end
if counts == nil
    puts 0
else
    puts counts.length
end