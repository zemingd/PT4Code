i = 1
gets.split('').each{|e|e =="-" ? i+=1 : i-=1}
puts i
