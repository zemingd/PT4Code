ans = 'Yes'
n = gets.to_i
a = []
n.times { a << gets.split.map(&:to_i) }
a.sort_by!{|e| e[1]}
cnt1 = 0
a.each do |e|
  cnt1 += e[0]
  ans = 'No' if cnt1 > e[1]
end
puts ans