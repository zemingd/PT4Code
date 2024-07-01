n = gets.to_s.to_i
a = gets.to_s.split.map(&:to_i)

c = Hash.new(0)
a.each{ |k| c[k] += 1 }
cnt = 1
c.values.each{ |k| cnt += k * (k-1)/2 }

a.each{ |k| puts cnt - c[k] }