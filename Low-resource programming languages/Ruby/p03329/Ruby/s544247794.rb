n = gets.chomp.to_i
ans = 0
t = Array.new(100001,99999)
t[0] = 0
db = []
(0..10).each do |d|
  db.push(6**d)
  db.push(9**d)
end
db = db.sort
db.each do |d|
  (0..100000).each do |i|
    t[i+d] = [t[i+d],t[i]+1].min if(i+d <= 100000)
  end
end
p t[n]