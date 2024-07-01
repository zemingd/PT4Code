n = gets.chomp.split(" ").map(&:to_i)[0]

strs = []
ans = 0
n.times do
    str = gets.chomp.split("").sort.join("")
    strs.each do |s|
        if str == s
            ans += 1
        end
    end
    strs.push(str)
end
puts ans
