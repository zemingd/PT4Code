n = gets.chomp!.to_i
as = gets.chomp!.split(" ")
as = as.map{|item| item = item.to_i}
as = as.sort
ans = as[as.length-1]+1

require 'prime'

1.upto(as[0]){
|num|
if as.all?{|item| item%num==0} then
	ans = num
end
}

puts ans