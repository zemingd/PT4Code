n = gets.to_i
h = gets.split(' ').map(&:to_i)
if_highter = []

n.times do |a|
    count = 0
    for i in a..(h.length-2) do
        if h[i] >= h[i+1]
            count +=1
        else
            break
        end
        if_highter << count
    end
end

if  if_highter.length ==0
    puts 0
else
    puts if_highter.max
end


