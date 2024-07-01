#set
n = gets.chomp.to_i
bottun_num_arr = []
0.upto(n - 1) do |i|
  bottun_num_arr[i] = gets.chomp.to_i
end

position = 1
count = 0

#main
loop do
  position = bottun_num_arr[position - 1]
  count += 1


  break if position == 2 || count == n + 1
end

if count == n + 1 then
  count = -1
end
print ("#{count}\n")