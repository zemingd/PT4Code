a, b = gets.chomp.split(" ").map(&:to_i)
diff = (a.abs - b.abs).abs
count = 0
if a==0
    if b.positive?
        count += diff
    else
        count += diff + 1
    end
elsif b==0
    if a.positive?
        count += diff + 1
    else
        count += diff
    end
elsif a.abs == b.abs
    count += 1
elsif a.positive? != b.positive?
    count += diff + 1
else
    count += diff + 2
end
puts count