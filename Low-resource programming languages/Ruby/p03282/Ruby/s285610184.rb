s = gets.chomp.split("").map(&:to_i)
k = gets.chomp.to_i
count = 0

s.each do |i|
    break if i != 1
    count += 1
end

if k <= count
    puts 1
    exit
end

s.each do |i|
    if i != 1 then
        puts i
        break
    end
end