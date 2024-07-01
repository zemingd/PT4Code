n, k = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)
h = h.sort
i = 0
ans = 0
if k >= 1 && (n-k).abs != 0
k.times do
    if h != []
    h.pop
    else
        ans += 1
        break
    end

end
else (n-k).abs == 0
    ans += 1
    break
end
if h != [] && ans == 0
puts h.inject(:+)
elsif ans >= 1
    puts "0"
end
