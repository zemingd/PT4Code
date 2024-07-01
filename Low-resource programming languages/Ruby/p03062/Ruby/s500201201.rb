n = gets.to_i
nums = gets.chomp.split.map(&:to_i)

elLtZero = 0
elLtOne  = 0
ans = 0

nums.each do |e|
    elLtZero += 1 if e<0
    elLtOne  += 1 if e<1
    ans += e.abs
end

if (elLtOne%2===0 || elLtZero%2===0) then
    puts ans
else
    idx = nums.index{|e| e<0}
    puts ans - 2 * nums[idx..-1].map{|e| e.abs}.min
end
