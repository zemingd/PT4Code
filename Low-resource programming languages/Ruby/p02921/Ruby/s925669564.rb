s = gets.chomp.split('')
t = gets.chomp.split('')
m = 0
0.upto(2){|n| 
  if s[n] == t[n]
    m += 1
  end
  }
p m