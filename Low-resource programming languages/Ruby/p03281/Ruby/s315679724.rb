n = gets.to_i
ns = (1..n).to_a.select{|i| i % 2 == 1}

cnt = 0
ns.each do |num|
    tmp = 0
    for i in (1..num)
        tmp = tmp + (num % i == 0 ? 1 : 0)
    end
    cnt = cnt + (tmp == 8 ? 1 : 0)
end

puts cnt