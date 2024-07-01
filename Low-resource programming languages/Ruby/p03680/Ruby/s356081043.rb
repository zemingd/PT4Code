n = gets.chomp.to_i
a = []
n.times do
    a << gets.chomp.to_i
end
done = Array.new(n,0)

i = 1
count = 1
while(done[i-1]==0)
    if a[i-1] == 2
        puts count
        exit
    end
    done[i-1] = 1
    count += 1
    i = a[i-1]
end
puts -1