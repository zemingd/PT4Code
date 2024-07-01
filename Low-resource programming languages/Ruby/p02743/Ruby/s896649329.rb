require 'bigdecimal'
require 'bigdecimal/util'

a,b,c = gets.split.map(&:to_d)

if (Math.sqrt(a).to_d + Math.sqrt(b).to_d) <= Math.sqrt(c).to_d then
    puts("Yes") 
else
    puts("No")
end