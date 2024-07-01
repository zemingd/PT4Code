n,q = gets.split.map(&:to_i)
s = gets.chomp.to_s
ary = []
cnt = 0
q.times do
  as = gets.split.map(&:to_i)
  ss = s[as[0]-1..as[1]-1]
  cnt = ss.gsub('AC','1').count('1')
  ary << cnt
  cnt = 0
end
puts ary