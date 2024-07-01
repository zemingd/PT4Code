a,v = gets.split.map &:to_i
b,w = gets.split.map &:to_i
T = gets.to_i

puts (a-b).abs <= (v-w) * T ? "YES" : "NO"