k = gets.to_i

for i in 1..1000
    if i%k==0
        puts "ok"
    else
        puts "NG"
    end
end