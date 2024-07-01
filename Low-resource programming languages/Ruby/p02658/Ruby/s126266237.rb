N = gets.to_i
array = gets.chomp.split.map(&:to_i)

total = 1
array.each do |i|
    total = total * i
end

if total > 1000000000000000000
    puts "-1"
else
    puts total if total
end