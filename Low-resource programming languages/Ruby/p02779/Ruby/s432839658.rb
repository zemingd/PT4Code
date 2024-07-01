require 'pp'

n = gets.chomp!.to_i
a_n = gets.split.map(&:to_i)

b = a_n.group_by {|x| x }
if b.length == n
    puts "YES"
else
    puts "NO"
end
