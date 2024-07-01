arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

x = arr[2] - (arr[0] - arr[1])

if x >=0
  puts x
elsif
  puts 0
end