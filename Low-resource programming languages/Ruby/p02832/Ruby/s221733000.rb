N = gets.chomp.to_i
block = gets.chomp.split(" ").map(&:to_i)

num = 1
ans = []

while num <= block.max
    index = block.find_index(num)
    unless index.nil?
        if num == 1
            block.slice!(0,index)
            ans.push(num)
        else
            if ans.last+1 == num
                block.slice!(0,index)
                ans.push(num)
            else
                break
            end
        end
    else
        break
    end
    num += 1
end

if ans[0] == 1
    puts N - ans.size
else
    puts -1
end
