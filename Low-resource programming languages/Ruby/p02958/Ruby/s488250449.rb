n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)

array_new = array.sort
count = 0

n.times do |i|
    if array[i] != array_new[i]
        count += 1
    end
end

if count <= 2
    puts "YES"
else
    puts "NO"
end
