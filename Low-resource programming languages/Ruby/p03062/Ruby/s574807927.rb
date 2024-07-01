require 'pp'

n = gets.to_i
a_n = gets.chomp!.split(" ").map(&:to_i).sort
x = a_n.group_by {|x| x >= 0 }

if x[false].length % 2 == 0
    puts a_n.inject(0) {|sum, n| sum += n.abs }
else
    s = a_n.inject(0) {|sum, n| sum += n.abs }
    min = 10 ** 10
    a_n.each do |a|
        if a.abs < min
            min = a.abs
        end
    end
    s -= (2 * min)
    puts s
end
