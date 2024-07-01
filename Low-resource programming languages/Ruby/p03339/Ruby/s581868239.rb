n = gets.to_i
lines = gets.chomp.split("")

cusum  = [[0,lines[1..n].count("E")]]

1.upto(n+1) do |i|
  cusum << [cusum[i-1][0] + (lines[i]=="W"?1:0), cusum[i-1][1]-(lines[i-1]=="E"?1:0)]
end

puts cusum.min_by{|arr| arr[0]+arr[1]}.inject(:+)