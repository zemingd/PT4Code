n = gets.to_i
s = gets.split(" ").map!{|i| i.to_i}
a = []
n.times do |j|
  a.push(s[j])
  a.reverse!
end
puts a.join(" ")