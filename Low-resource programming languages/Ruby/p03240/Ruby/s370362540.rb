n = gets.chomp.to_i
 
x = [0] * n
y = [0] * n
h = [0] * n
 
n.times do |i|
  (x[i], y[i], h[i]) = gets.chomp.split(' ').map(&:to_i)
end
 
(0..100).each do |cy|
  (0..100).each do |cx|
    a = []
    
    n.times do |i|  
      if h[i] > 0 then
        a.push( h[i] + (cx - x[i]).abs + (cy - y[i]).abs )
      end
    end
    
    if ((a.uniq.size == 1) and (a[0] > 0)) then
      b = a[0]
      flag = true
      
      n.times do |i|
        if (h[i] + (cx - x[i]).abs + (cy - y[i]).abs) != b then
          flag = false
          break
        end
      end
      
      if flag then
        puts [cx, cy, b].map(&:to_s).join(' ')
        exit
      end
    end
  end
end