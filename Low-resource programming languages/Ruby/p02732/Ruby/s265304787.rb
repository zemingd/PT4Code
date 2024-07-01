n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
arr_del = Array.new;
ans = 0;num = num1 = 0
n.times do |k|
  ans = 0
  arr_del = arr.dup;arr_del.delete_at(k)
	arr_del.max.times do |k1|
    num1 = arr_del.count(k1+1)
	ans += (num1 * (num1-1))/2
    arr_del.delete(num)
  end
    puts ans
end
  
  
  