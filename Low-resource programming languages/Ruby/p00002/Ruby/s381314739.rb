_in = gets.chomp
num = _in.split(" ")
sum = 0
num.each{|n| sum += n.to_i}
cnt = 0
while sum > 0 do
	sum=sum/10
	cnt+=1
end
p cnt