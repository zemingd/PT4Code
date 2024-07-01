arr = $stdin.gets.chomp.split("")
arr.map! do |a_j|
a_j.to_i
end

if arr[0] != arr[2] or arr[1] != arr[1]
  puts "No"
else
  puts "Yes"
end