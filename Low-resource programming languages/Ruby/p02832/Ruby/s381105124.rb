n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)
a = 1

array.each do |i|
    if i == a
        a += 1
    end
end

if a != 1
    puts n - (a - 1)
else
    puts -1
end
