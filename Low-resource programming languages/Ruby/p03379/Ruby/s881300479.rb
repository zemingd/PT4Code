n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

(0..n-1).each do |i|
  new_arr = arr.dup
  new_arr.delete_at(i)
  new_arr.sort!
  print "#{new_arr[n/2 - 1]}\n"
end
