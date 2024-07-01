N = gets.to_i
ary = gets.split.map(&:to_i).sort.uniq
if ary.count == 1
  puts 0
else

    nums = Hash.new(0)
    ans = Array.new(ary.max + 1).map{|x| x = 0}
    result = 0
    
    ary.each do |i|
      nums[i] += 1
       ans[i] = 1
    end
    
    ary.each do |k|
      next if ans[k] == 0
      result += 1 if ans[k] == 1
      k.step(ary.max, k) do |l|
        ans[l] = 0
      end
    end
    puts result
end