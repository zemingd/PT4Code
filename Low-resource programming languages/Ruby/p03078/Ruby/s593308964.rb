x,y,z,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

a = a.sort_by{|n| -n}
b = b.sort_by{|n| -n}
c = c.sort_by{|n| -n}

all = a.each_with_index.flat_map do |aa, ai|
  break if ai+1 > 3000
  b.each_with_index.flat_map do |bb, bi|
    break if (ai+1) * (bi+1) > 3000
    c.each_with_index.flat_map do |cc, ci|
      break if (ai+1) * (bi+1) * (ci+1) > 3000
      aa + bb + cc
    end
  end
end.compact

puts all.sort_by{|n| -n}.take(k)
