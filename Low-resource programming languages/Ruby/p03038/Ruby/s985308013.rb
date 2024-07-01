lines = readlines.map(&:strip).map{|line| line.split.map(&:to_i)}

n, m = lines.shift
as = lines.shift.sort
bcs = lines

c_sorted_bcs = bcs.sort{|l,r|l[1]<=>r[1]}.reverse

nested_out_bc = c_sorted_bcs.inject([]) do|memo, bc|
  memo.concat(Array.new(bc[0], bc[1]))
end

#puts as.inspect
#puts nested_out_bc.inspect
#puts as.zip(nested_out_bc).inspect

sum = as.inject(0){|sum,num|sum+num}

as.zip(nested_out_bc).each do |a, c|
  if a && c && c>a
    sum = sum - a + c 
  else
    break
  end
end


puts sum
