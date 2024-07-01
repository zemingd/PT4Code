n = gets.to_i
h = gets.split(' ').map(&:to_i)
if_highter = []
count = 0
counts = []
(n-1).times do |a|
    if h[a] >= h[a+1]
        count +=1 
        counts << count
    else
        counts<<count
        count = 0
    end
end

puts counts.max