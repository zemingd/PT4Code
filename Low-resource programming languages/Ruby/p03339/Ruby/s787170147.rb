n = gets.chop.to_i
s = gets.chop.split('')

now = s[1..n-1].count("E")
min = s[1..n-1].count("E")

(1..n-1).each do |i|
  now += 1 if s[i-1] == "W"
  now -= 1 if s[i] == "E"
  min = [min, now].min
end

p min
