arr = gets.chomp.split.map{|x| x.to_i}
max = arr.max
a = 0
b = max
arr.length.times do |i|
  unless arr[i] == max
    a += arr[i]
  end
end

if a == b
  puts 'Yes'
else
  puts 'No'
end
