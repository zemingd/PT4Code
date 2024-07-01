N=gets.to_i
list=gets.chomp.split(" ").map(&:to_i);
list.sort!
n=N/2
if(list[n]>list[n-1])
print(list[n]-list[n-1])
else
print(0)
end
