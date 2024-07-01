arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

arr.sort!

x = arr[0]+arr[1]+arr[2]*10

puts x