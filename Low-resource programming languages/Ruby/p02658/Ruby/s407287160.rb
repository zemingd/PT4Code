n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
anosize = a.size
count = 0
all = 1
a = a.to_s
if a.include?("0") 
    puts "0"
    exit
end
a = a.to_i
a.each do |i|
    all = all.to_i
    all = all * i
    all = all.to_s
    if all.size >= 19
        puts "-1"
        exit
    end
    count += 1
    if count == anosize
        puts all
    end
end