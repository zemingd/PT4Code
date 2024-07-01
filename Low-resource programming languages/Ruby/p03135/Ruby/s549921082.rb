arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_f
end

x = arr[0]/arr[1]

puts x