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

    item.compact!
    item.sort!
    if item.count > 0
      (k-j).times do
        if item[0] < 0
          item.shift
        end
        break if item.count == 0
      end
    end
    p item
    pat << item.inject(:+)
  end
end
pat.compact!
pat << 0
p pat.max

