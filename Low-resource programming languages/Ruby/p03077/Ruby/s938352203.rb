##templete
n = gets.chomp.to_i
lst=[]
5.times do |i|
  lst[i] = gets.chomp.to_i
end

min = lst.min

group = (n + min - 1) / min

puts 5 + group - 1
