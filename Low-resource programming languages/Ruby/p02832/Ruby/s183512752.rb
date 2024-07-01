N = gets.chomp.to_i
block = gets.chomp.split(" ").map(&:to_i)

num = 1
ans = []

200000.times do
    index = block.find_index(num)
    unless index.nil?
        block.slice!(0,index)
        ans.push(num)
    end
    num += 1
end

if ans[0] == 1
    puts N - ans.size
else
    puts -1
end
