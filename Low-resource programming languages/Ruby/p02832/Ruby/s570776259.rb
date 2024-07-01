N = gets.chomp.to_i
block = gets.chomp.split(" ").map(&:to_i)

num = 1
ans = 0

while true
    index = block.find_index(num)
    unless index.nil?
        block.slice!(0,index)
        ans += 1
    else
        break
    end
    num += 1
end

if ans != 0
    puts N - ans
else
    puts -1
end
