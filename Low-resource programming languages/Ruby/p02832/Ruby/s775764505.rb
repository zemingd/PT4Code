require 'pp'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i)

count = 0
find = 1

a_n.each do |a|
    if a == find
        count += 1
        find += 1
    end
end

if count == 0
    puts -1
else
    puts n - count
end
