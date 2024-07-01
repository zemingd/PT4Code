n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
if !a.include?(1)
    puts -1
    exit
end
count = 1
ans = 0

a.each do |i|
    if i == count
        count += 1
    else
        ans += 1
    end
end

puts ans