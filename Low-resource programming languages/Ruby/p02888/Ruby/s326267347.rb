n = gets.to_i
num = gets.strip.split.map(&:to_i)
num.sort!
#短い２つを先に決める
cnt = 0
for i in 0..n-3
  for j in i+1..n-2
    nums = num[j+1..n-1]
    asdfxz = nums.reverse.bsearch_index {|x| x < num[i]+num[j]}
    if asdfxz == nil
      as = 0
    else
      as = nums.size - asdfxz
    end
    cnt += as
  end
end
puts cnt