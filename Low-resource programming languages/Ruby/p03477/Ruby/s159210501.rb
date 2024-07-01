arr = gets.split.map(&:to_i)

right = arr[0] + arr[1]
left = arr[2] + arr[3]

if right < left then
    puts "Right"
elsif right > left then
    puts "Left"
else
    puts "Balanced"
end
