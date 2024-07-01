require 'pp'

if gets.split.map(&:to_i).group_by {|x| x }.length == 2
    puts "Yes"
else
    puts "No"
end
