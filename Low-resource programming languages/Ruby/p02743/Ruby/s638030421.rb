require 'bigdecimal'
require 'bigdecimal/util'  #<= to_d メソッドが使えるようになる

a,b,c = gets.split.map(&:to_d)

if 4*a*b<(c-a-b)**2
    puts "Yes"
else
    puts "No"
end