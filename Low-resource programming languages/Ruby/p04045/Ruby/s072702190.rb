n, k = gets.split.map(&:to_i)
a = gets.chomp.split
while true 
    if a.any?{|k| n.to_s.include?(k)}
        n += 1
    else
        puts n
        exit
    end
end