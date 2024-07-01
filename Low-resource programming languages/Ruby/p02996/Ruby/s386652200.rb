n = gets.to_i
work = []
n.times{|i|
  work[i] = gets.split(" ").map{|k|k.to_i}
  }
work.sort!{ |a, b| a[1] <=> b[1] }
sum = 0
flag = 0
n.times{|i|
  sum += work[i][0]
  if sum > work[i][1] then
    puts "No"
    flag = 1
    break
  end
  }
 if flag == 0 then
  puts "Yes"
 end