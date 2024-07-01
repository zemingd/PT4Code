n = gets.chomp.to_i
x = gets.chomp.split(" ").map(&:to_i)
xx = x.sort

x.each do |i|
    if i <= xx[n/2-1]
        puts xx[n/2]
    else
        puts xx[n/2-1]
    end
end
