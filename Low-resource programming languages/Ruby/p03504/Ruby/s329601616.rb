n,c = gets.chomp.split(" ").map(&:to_i)
prog = n.times.map{gets.chomp.split(" ").map(&:to_i)}.sort_by{|i,j,k|i}
rec = [[prog[0][1],prog[0][2]]]
s = 1
f = false
(n-1).times do |i|
  s.times do |j|
    if (rec[s-1-j][0] == prog[i+1][0] && rec[s-1-j][1] == prog[i+1][1]) || rec[s-1-j][0] < prog[i+1][0]
      rec[s-1-j][0] = prog[i+1][1]
      rec[s-1-j][1] = prog[i+1][2]
      f = true
      break
    end
  end
  if f == false
    rec << [prog[i+1][1],prog[i+1][2]]
    s += 1
  end
  f = false
  (s-1).times do |j|
    if rec[j][0] > rec[j+1][0]
      rec[j][0],rec[j+1][0] = rec[j+1][0],rec[j][0]
    end
  end
end
p s