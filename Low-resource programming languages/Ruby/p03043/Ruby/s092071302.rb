n, k = gets.chomp!.split(" ").map!(&:to_i)

# 1回のダイスでロールで勝つパターン
x = n - k + 1 >= 0 ? n - k  + 1 : 0
sum = 0

1.upto(n) do |i|
    j = i
    count = 0
    while j < k
        j *= 2
        count += 1
    end

    #puts "i=#{i} count=#{count}"
    sum += 1.0 / n * (1.0/2) ** count
end

puts sum
