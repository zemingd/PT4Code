n, l = gets.split.map(&:to_i)
    
apples = (1..n).map{|a| a + l - 1}
ans = apples.map{|a| a.abs}.min

sum = apples.inject(&:+)
puts sum < 0 ? sum + ans : sum - ans