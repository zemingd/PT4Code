n,q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

q.times do
  cnt = 0
  l,r = gets.chomp.split(" ").map(&:to_i)
  (r-l).times do |i|
    cnt += 1 if (s[i+l-1]=="A" and s[i+l]=="C")    
  end
  p cnt
end

