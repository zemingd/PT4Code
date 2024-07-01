k = gets.split.map(&:to_i)
a,b=gets.split.map(&:to_i)

y = (b/k[0]).to_i
i = 1
for i in 1..y
    if (a <= k[0]*i) && (k[0]*i <= b)
        puts 'OK'
        break            
    end
    if i == y
        puts 'NG'
        break
    end
end