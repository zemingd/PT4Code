#ABC128C_Switches.rb
n,m = gets.split.map(&:to_i)
ans = 0
light = []
(1..m).each do |mm|
  ar = gets.split.map(&:to_i)
  light << ar[1...ar.size]
end
param = gets.split.map(&:to_i)

(0...(2**n)).each do |i|
  on = 0
  light.each_with_index do |sw,j|
    
    tmp = 0
    sw.each do |sw_num|
      tmp += i[sw_num-1]
    end

    if tmp%2==param[j]
      on += 1
    else
    end

  end
  
    if on == m
      ans += 1
    end
    
end
puts ans
