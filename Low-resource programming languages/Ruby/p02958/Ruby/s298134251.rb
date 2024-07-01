n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

count = 0
(0...n).each do |i|
    if arr[i] != i + 1
        count += 1
    end
end

if count == 0 || count == 2
    puts "YES"
else
    puts "NO"
end