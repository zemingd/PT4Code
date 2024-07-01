n,k = gets.split(" ").map(&:to_i)
p = gets.split(" ").map(&:to_i)
i = 0
max = 0
max_ary = []
point = k - 1

while i != n-k+1 do
    current_k = p[i..point].inject(&:+)
    if current_k > max
        max = current_k
        max_ary = p[i..point]
    end
    i += 1
    point += 1
end

kitai = 0
max_ary.each do |i|
    sum = 0
    bunbo = i
    while i != 0
        sum += i
        i = i - 1
    end
    i_kitai = sum / bunbo.to_f
    kitai = kitai + i_kitai
end
puts kitai

