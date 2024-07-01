lines = readlines.map(&:strip).map{|line| line.split.map(&:to_i)}

n, m = lines.shift
as = lines.shift.sort
bcs = lines


c_sorted_bcs = bcs.sort{|l,r|l[1]<=>r[1]}.reverse

nested_out_bc = []
c_sorted_bcs.each do |b, c|
  nested_out_bc.push(*([c]*b))
  break if nested_out_bc.size >= n
end
nested_out_bc = nested_out_bc.first(n)

#puts as.inspect
#puts nested_out_bc.inspect

as.size.times do |i|
  as[i] = [as[i], nested_out_bc[i]].compact.max
end


puts as.inject(:+)

