n = gets.chomp.to_i
2.ans = 0
3.t = Array.new(100000,99999)
4.t[0] = 0
5.db = []
6.(0..10).each do |d|
7.  db.push(6**d)
8.  db.push(9**d)
9.end
10.db = db.sort
11.db.each do |d|
12.  (0..100000).each do |i|
13.    t[i+d] = [t[i+d],t[i]+1].min if(i+d < 100000)
14.  end
15.end
16.p t[n]
