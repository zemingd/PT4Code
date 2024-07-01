N, x = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort
ans = 0
count = 0
a.each do |ai|
    count += ai
    if count <= x
        ans += 1
    end
end
puts ans