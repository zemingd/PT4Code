arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

arr.sort!

puts arr[2] - arr[0]