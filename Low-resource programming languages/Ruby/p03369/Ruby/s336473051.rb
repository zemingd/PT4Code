s = gets.split
n = 700

(0..2).each{|i|
  if s[i] == "O"
    n += 100
  end
  }
p n