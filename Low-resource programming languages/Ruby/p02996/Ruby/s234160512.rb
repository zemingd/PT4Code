N = gets.to_i
W = []
N.times{
  W << gets.chomp.split(" ").map(&:to_i)
}

W.sort_by!{|w| w[1]}
ans = "Yes"
t = 0
W.each{|w|
  t += w[0]
  (ans = "No"; break) if t > w[1]
}

puts ans
