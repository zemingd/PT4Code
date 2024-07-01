N = gets.chomp.to_i
H = gets.chomp.split(" ").map(&:to_i)
ans = 1
max = H[0]
for i in 1..H.length-1 do
    if max <= H[i]
        ans = ans + 1
        max = H[i]
    end
end

puts ans