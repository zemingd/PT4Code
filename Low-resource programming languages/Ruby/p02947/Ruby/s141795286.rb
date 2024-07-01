n = gets.to_i
m = Hash.new{0}
ans = 0
n.times{ans += m[gets.chomp.chars.sort.join] += 1}
p ans-n