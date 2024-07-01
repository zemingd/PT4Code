require 'pp'
n = gets.to_i
s = {}
n.times do
  ss = gets.chomp
  s[ss].nil? ? s[ss] = 1 : s[ss] += 1
end

sss = s.sort_by{|x|x[1]}

a = sss[-1][1]
hoge = s.to_a.select{|x|x[1] == a}
puts hoge.map{|x|x[0]}.sort.join("\n")

