N = gets.to_i
l = gets.split.map{|item| item.to_i}
m = l.max
l.delete(m)
if l.length > 0
    if m < l.inject(:+)
        puts "Yes"
    else
        puts "No"
    end
else
    puts "No"
end