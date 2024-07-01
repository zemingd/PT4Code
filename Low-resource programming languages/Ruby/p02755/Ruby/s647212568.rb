input = gets.split(" ")
A = input[0].to_i
B = input[1].to_i

res = -1
(1..1000).each do |num|
    if (num * 0.08).floor == A && (num * 0.1).floor == B
        res = num
        break
    end
end
print res