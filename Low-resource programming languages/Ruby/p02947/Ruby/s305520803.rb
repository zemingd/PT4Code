n = gets.to_i
arr = []
n.times do 
	arr << gets.chomp.split('').sort.join('')
end

cnt = 0
0.upto(arr.size) do |i|
	0.upto(arr.size) do |j|
      if i != j && arr[i] == arr[j]
        puts arr[i]
      	cnt+=1
      end
    end
end
puts cnt/2