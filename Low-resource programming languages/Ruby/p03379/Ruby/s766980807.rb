#require 'pp'

n = gets.chomp!.to_i
x_n = gets.chomp!.split(" ").map(&:to_i)
y_n = x_n.sort

left = y_n[y_n.length / 2 - 1]
right = y_n[y_n.length / 2]

x_n.each do |x|
    if x <= left
        puts right
    else
        puts left
    end
end
