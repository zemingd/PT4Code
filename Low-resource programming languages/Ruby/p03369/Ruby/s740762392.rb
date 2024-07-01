s = gets.split
n = 700
(0..s.length).each{|i|
  if s[i] == "O"
    n += 100
  end
  end
p n