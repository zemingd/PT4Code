n = gets.to_i
a = gets.chomp.split
mul = 1
if a.include?("0")
    puts 0
else
    n.times do |i|
        mul *= a[i].to_i
        break if mul > 10 ** 18
    end
    puts mul > 10 ** 18 ? -1 : mul
end
