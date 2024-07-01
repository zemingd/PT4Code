n = gets(&:to_i)
a = n.times.map{gets.to_i-1}
i=0
n.times do |j|
    if i==1
        put i
        exit
    end
    i=a[i]
end
put -1

