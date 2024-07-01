n,q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

ary = []

(n-1).times do |i|
  ary.push(i+1) if (s[i]=="A" and s[i+1]=="C")
end

q.times do
  cnt = 0
  l,r = gets.chomp.split(" ").map(&:to_i)
  ary.size.times do |i|
  cnt += 1 if (l<=ary[i] and (ary[i]+1)<=r)
  end
  p cnt
end
