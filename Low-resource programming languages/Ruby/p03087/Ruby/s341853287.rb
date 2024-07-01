n,q = gets.split.map &:to_i
s = gets.chomp
l = []
r = []

q.times do |i|
  li,ri = gets.split.map{|s|s.to_i - 1}

  hoge = s[li..ri]
  puts hoge.scan("AC").size
end

