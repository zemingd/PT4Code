n, T = gets.chomp.split(' ').map(&:to_i)
x = []
y = []
h = []
min = nil
for i in 0...n do
  x[i], y[i], h[i] = gets.chomp.split(' ').map(&:to_i)
end

c = []
highest = 0
for i in 0..100
  for j in 0..100
    flag = true
    pre_h = nil
    new_h = nil
    for k in 0..(x.size - 1) do

      pre_h = (i - x[k]).abs + (j - y[k]).abs + h[k]
      pre_h = 0 if pre_h < 0
      if !new_h.nil? && pre_h != new_h
        flag = false
      end
      new_h = pre_h

      break unless flag
    end
    
    if flag
      puts "#{i} #{j} #{new_h}"
      exit
    end
      
  end
end