def main()
  num = gets.to_i
  as = gets.split.map(&:to_i)
  
  dp =  Array.new(as.length, true)
  as.sort!.each.with_index do |v, i|
    if v === as[i+1]
      dp[i] = false
      dp[i+1] = false
      next
    end
    if dp[i]
      as.each.with_index do |vv, j|
        next if i >= j
        dp[j] = false if vv % v === 0
      end
    end
  end
  dp.select {|i| i}.count
end

print main