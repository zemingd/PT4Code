  n = gets.split.map
break if n[0]=='0'
    num = n.to_i
    puts num.inject(:+)
