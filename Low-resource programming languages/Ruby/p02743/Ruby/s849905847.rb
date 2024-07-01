require 'bigdecimal'
require 'bigdecimal/util'

abc = gets.split(' ').map(&:to_i)

a = abc[0].to_d
b = abc[1].to_d
c = abc[2].to_d

if Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c) then 
    puts "Yes"
else
    print "No"
end