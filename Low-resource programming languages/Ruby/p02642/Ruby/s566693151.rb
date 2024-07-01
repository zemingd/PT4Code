n = $stdin.gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
flag_arr = Array.new(n){1}

arr.sort!

n.times do |k|
  a_i = arr[k]
  n.times do |j|
   if a_i % arr[j] == 0 && k != j
     flag_arr[k] = 0
     break
   end
   if arr[j] > a_i
     break
   end
  end
end
puts flag_arr.count(1)