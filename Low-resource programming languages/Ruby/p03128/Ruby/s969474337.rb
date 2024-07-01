N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

bar = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]
bar2num = Hash.new(0)
A.each do |n|
  b = bar[n]
  bar2num[b] = n if n > bar2num[b]
end 

minbar = bar2num.keys.min
sz, r = N.divmod(minbar)
ansb = Array.new(sz, minbar)

for i in 0...[20, ansb.size].min
  bar2num.sort_by{|ar| -ar[1]}.each do |bar, num|
    if num > bar2num[ansb[i]] && r >= bar - ansb[i]
      r -= (bar - ansb[i])
      ansb[i] = bar
      break
    end
  end 
end 

t = [0, ansb.size - 20].max
(ansb.size - 1).downto(t).each do |i|
  bar2num.sort_by{|ar| -ar[0]}.each do |bar, num|
    if bar > ansb[i] && r >= bar - ansb[i]
      r -= (bar - ansb[i])
      ansb[i] = bar 
      break
    end 
  end
end
puts ansb.map{|b| bar2num[b]}.join