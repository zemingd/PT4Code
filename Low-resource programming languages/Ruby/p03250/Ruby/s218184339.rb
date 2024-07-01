n = gets.split(" ").map(&:to_i)
n.sort!

sahen = n[2].to_s + n[1].to_s
puts sahen.to_i + n[0]