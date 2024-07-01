n, k = gets.chomp.split(" ").map(&:to_i)
count = 0
(1..n).each do |i|
    ans = 1
    if n < k
        ans = ans *  (1/n.to_f)
        while true
            i = i * 2
            ans *= (1/2.to_f)
            if i > k
                break
            end
        end
    else
        ans = ans * (1/n.to_f)
    end
    count += ans
end
puts count