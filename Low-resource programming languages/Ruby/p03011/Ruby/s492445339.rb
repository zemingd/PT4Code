arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

P = arr[0] + arr[1]
Q = arr[1] + arr[2]
R = arr[2] + arr[0]

puts [P, Q, R].min