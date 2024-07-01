s = gets.split
n = 700
a = s.length
(0..a).each{|i|
  if s[i] == "O"
    n += 100
  end
  }
p n