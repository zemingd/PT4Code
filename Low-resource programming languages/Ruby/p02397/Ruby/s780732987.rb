arr = gets.to_s.split(" ").sort!

while true
  break if arr[0] == 0 && arr[1] == 0
  puts "#{arr[0]} #{arr[1]}"
end