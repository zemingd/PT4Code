n, k = gets.chomp.split(' ').map(&:to_i)
v = gets.chomp.split(' ').map(&:to_i)

pat = []
for j in 0..k
  for i in 0..j
    tmp_v = v.dup
    item = []
    i.times do
      item << tmp_v.shift
    end
  
    (j-i).times do
      item << tmp_v.pop
    end
 
    item.sort!
    p item
    if item.empty? == false 
      (k-j).times do
        if item[0] < 0
          item.shift
        end
        break if item.empty?
      end
    end
    item.compact!
    if item.size > 0
      pat << item.inject(:+)
    end
  end
end
pat << 0
pat.compact!
p pat.max
