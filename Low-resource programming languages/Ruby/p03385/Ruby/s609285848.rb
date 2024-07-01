# Your code here!

require 'set'

S = gets.chomp.split("")
S_set = S.to_set
if S_set == Set.new(["a", "b", "c"])
    puts "Yes"
else
    puts "No"
end