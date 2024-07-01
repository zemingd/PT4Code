require 'scanf'

while true
 
 a,op,b = gets.chomp.scanf("%d %1s %d")
 break if op=="?"
 puts eval("#{a} #{op} #{b}")

end