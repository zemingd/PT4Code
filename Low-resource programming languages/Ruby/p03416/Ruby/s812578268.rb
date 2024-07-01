a,b = gets.chomp.split.map(&:to_i)

dig_2 = Array(a/1000..b/1000)
ans = 0

dig_2.each do |i|
    for j in 0..9
        x = i*1000 + j*100 + i/10+(i%10)*10
        if a <= x and x <= b
            ans +=1
        end
    end
end

p ans