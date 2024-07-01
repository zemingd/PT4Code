n = gets.chomp.to_i
array = gets.chomp.split("")
count = 0

unless n == 1
  array.each_with_index do |x, i|
    count += 1 if i < n-1 && x != array[i+1]
  end
end

count += 1

puts "#{count}"