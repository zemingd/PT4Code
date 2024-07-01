n = gets.chomp.to_i

x = [0] * n
y = [0] * n
h = [0] * n

n.times do |i|
  (x[i], y[i], h[i]) = gets.chomp.split(' ').map(&:to_i)
end

101.times do |cy|
  101.times do |cx|
    a = []
    
    n.times do |i|  
      if h[i] > 0 then
        a.push( h[i] + (cx - x[i]).abs + (cy - y[i]).abs )
      end
    end
    
    if a.uniq.size > 1 then
      next
    end
    
    t = []
    
    ch = 0
    n.times do |i|
      if h[i] > 0 then
        t.push( h[i] + (cx - x[i]).abs + (cy - y[i]).abs )
      end
    end
    
    if t.uniq.size == 1 then
      puts [cx, cy, t[0]].map(&:to_s).join(' ')
    end
  end
end