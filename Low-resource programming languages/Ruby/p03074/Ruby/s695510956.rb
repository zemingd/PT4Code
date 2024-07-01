N, K = gets.split.map(&:to_i)
S = gets.chomp

b = true
count = 0

nums = []
for f in S.chars.map{|c| c == '1'} do
    if f == b then
        count += 1
    else
        nums.push(count)
        count = 1
        b = !b
    end
end
nums.push(count)

tmp = 0
Nums = (nums + [0]*(2*K + 1)).zip([0]*(2*K + 1) + nums).map{|i, j| tmp += i - j}

p [*0...Nums.size].select(&:even?).map{|i| Nums[i]}.max
