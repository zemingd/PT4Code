def lscan;gets.split.map(&:to_i);end

n, m = lscan

trig = m.times.map{lscan[1..-1].map{|e| e-1}}
pp = lscan

ans = 0
[0,1].repeated_permutation(n) do |sw|
  
  flg = true
  m.times do |i|
    flg &&= trig[i].map{|t| sw[t]}.reduce(:+)%2 == pp[i]
  end
  ans += 1 if flg
end

p ans