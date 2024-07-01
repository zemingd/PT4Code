require 'prime'

io = STDIN
n=io.gets.to_i

puts Prime.each(1000).select{|i|i%5==1}.take(n).join(" ")
