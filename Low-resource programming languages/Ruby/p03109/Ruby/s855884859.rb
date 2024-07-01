arr = $stdin.gets.chomp.split("/")
arr.map! do |a_j|
 a_j.to_i
end

if arr[0] <= 2019 and arr[1] <= 4 and arr[2] <= 31
  puts "Heisei"
else
  puts "TBD"
end