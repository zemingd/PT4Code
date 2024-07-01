input = gets.split
flag = true
(input.size-1).times do |i|

  flag = false if input[i][input[i].size-1] != input[i+1][0]
end
puts flag ? "YES" : "NO"