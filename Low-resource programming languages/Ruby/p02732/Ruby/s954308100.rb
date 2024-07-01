n = gets.to_s.to_i
a = gets.to_s.split.map{|i|i.to_i}

c = Array.new(2*10**5+1,0)
a.each do |k|
  c[k] += 1
end

s = 1
c.each{|k| s += k * (k-1)/2 if k > 0}

a.each do |k|
  puts s - c[k]
end