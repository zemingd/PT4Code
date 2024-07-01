a, b = gets.split
puts %i(> == <).find{|e| a.send(e, b)}[0]
