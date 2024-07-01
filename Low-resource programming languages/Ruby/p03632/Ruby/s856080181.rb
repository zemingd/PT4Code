num = gets.chomp!.split(' ').collect!{|a| a.to_i }
if num[1] <= num[3]
 puts num[1] > num[2] ? num[1] - num[2] : 0
else
  puts num[1] > num[2] ? (num[1] - num[2]) - (num[1] - num[3]) : 0
end