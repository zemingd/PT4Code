lines = readlines.map(&:strip).map{|line| line.split.map(&:to_i)}

n, m = lines.shift
as = lines.shift.sort
bcs = lines

c_sorted_bcs = bcs.sort{|l,r|l[1]<=>r[1]}.reverse

nested_out_bc = c_sorted_bcs.inject([]) do|memo, bc|
  memo.concat(Array.new(bc[0], bc[1]))
end

#puts"---"
#puts as.inspect
#puts nested_out_bc.inspect
#puts as.zip(nested_out_bc).inspect


altered_arr = []
nested_out_bc.each_with_index do |c, index|
  if c > as[index]
    altered_arr.push(c)
  else
    break
  end
end

as[0..altered_arr.count-1] = altered_arr if altered_arr.count > 0

#puts as.inspect
#puts"---"
#puts altered_arr.inspect
#puts"---"

puts as.inject(0){|m,n|m+n}
