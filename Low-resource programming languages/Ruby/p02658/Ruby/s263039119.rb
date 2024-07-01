n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
anosize = a.size
count = 0
all = 1
a.each do |i|
    all = all * i
    if all.size >= 18
        puts "-1"
        exit
    end
    count += 1
end
if count == anosize
    puts all
end