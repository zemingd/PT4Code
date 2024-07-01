n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
anosize = a.size
count = 0
all = 1
if a.include?(0)
    puts "0"
    exit
end
a.each do |i|
    all = all.to_i
    all = all * i
    all = all.to_s
    if all.size >= 19 
        all = all.to_i
        if all > 1000000000000000000

        puts "-1"
        exit
        end
        all = all.to_s
    end
    count += 1
    if count == anosize
        puts all
    end
end