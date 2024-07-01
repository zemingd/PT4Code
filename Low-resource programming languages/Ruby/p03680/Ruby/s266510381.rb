N = gets.to_i
a = N.times.map{to_i-1}

i = 0
count = 0

while != 1 do
    i = a[i] - 1
    count++;
    if count > N then
        puts -1 
        exit
    end
end
puts count