LEN, QES = gets.chomp.split(" ").map(&:to_i)
STRING = gets.chomp

RES = [0, 0]
(2..LEN).each do |i|
  if STRING[i-2] == "A" && STRING[i-1] == "C"
    RES[i] = RES[i-1] + 1
  else
    RES[i] = RES[i-1]
  end
end

(0...QES).each do |i|
  l, r = gets.chomp.split(" ").map(&:to_i)
  puts (RES[r] - RES[l])
end