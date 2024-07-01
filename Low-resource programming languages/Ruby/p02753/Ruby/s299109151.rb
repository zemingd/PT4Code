stations = gets.split('')
a = false
b = false
stations.each do |n|
  #puts n
  if n == "A"
    a = true
  else
    b = true
  end
end

if a == true && b == true
  puts "Yes"
else
  puts "No"
end