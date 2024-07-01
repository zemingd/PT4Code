s = gets.chomp.split('').sort.join
t = gets.chomp.split('').sort.reverse.join
puts ([s,t].sort[0]==s && s<t)? 'Yes' : 'No'