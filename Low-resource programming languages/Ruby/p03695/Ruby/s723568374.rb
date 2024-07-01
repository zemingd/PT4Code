n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

col = Array.new(9,0)
a.each do |v|
    i = v / 400
    if i < 8
        col[i] += 1
    else
        col[8] += 1
    end
end

m = col[0,8].count {|v| v > 0}

if m == 0
    min = 1
    max = [col[8], 8].min
elsif col[8] == 0
    min = m
    max = m
else
    min = m
    max = [m + col[8], 8].min
end
print "#{min} #{max}\n"