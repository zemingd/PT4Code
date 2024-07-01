N = gets.split.map(&:to_i) 
i = gets.split.map(&:to_i) 

# 総得票数
sum = 0
i.each { |s| sum += s }

# 選んだ個数
M = N[1]

if i[M] < sum / (4 * M)
  puts "No"
else
  puts "Yes"
end