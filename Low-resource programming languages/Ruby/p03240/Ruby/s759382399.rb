n = gets.chomp.to_i

x = [0] * n
y = [0] * n
h = [0] * n

n.times{|i| (x[i], y[i], h[i]) = gets.chomp.split(' ').map(&:to_i)}

def f1(cy, cx, y, x)
  (cx - x).abs + (cy - y).abs
end

if n == 1 then
  puts puts [x[0], y[0], h[0]].map(&:to_s).join(' ')
  exit
end

flag = false

101.times do |cy|
  101.times do |cx|
    a = []
    
    n.times do |i|  
      if h[i] > 0 then
        a.push( h[i] + f1(cy, cx, y[i], x[i]) )
      end
    end
    
    if a.uniq.size == 1 then
      flag = true
      
      ch = 0
      n.times do |i|
        if h[i] != 0 then
          ch = h[i] + f1(cy, cx, y[i], x[i])
          break
        end
      end
      
      puts [cx, cy, ch].map(&:to_s).join(' ')
      
      break
    end
  end
  
  if flag then
    break
  end
end