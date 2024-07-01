n,q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

q.times do
  cnt = 0
  l,r = gets.chomp.split(" ").map(&:to_i)
  t = s[l-1..r-1]
  (t.size-1).times do |i|
    cnt += 1 if (t[i]=="A" and t[i+1]=="C")
  end
  p cnt
end
