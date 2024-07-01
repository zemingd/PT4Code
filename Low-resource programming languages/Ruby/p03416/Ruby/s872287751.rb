a, b = gets.split.map(&:to_i)

sum = 0
(a..b).to_a.each do |i|
    hoge = i.to_s.split("")
    fuga = hoge.length / 2
    flag = 0
    fuga.times do |j|
        if hoge[j] != hoge[(j+1)*(-1)]
            flag = 1 
            break
        end
    end
    sum += 1 if flag == 0
end
puts sum