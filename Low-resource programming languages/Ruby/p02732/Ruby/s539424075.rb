n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
arr_del = Array.new
num = 0;num1 = 0
zensha = kousha = 0

arr_del = arr.dup

while arr_del.length > 0
      num = arr_del[0]
      num1 = arr_del.count(num)
	  zensha += (num1 * (num1-1))/2
      arr_del.delete(num)
end

n.times do |k|
	kousha = arr.count(arr[k]) -1
	puts zensha - kousha
end
  
  
  