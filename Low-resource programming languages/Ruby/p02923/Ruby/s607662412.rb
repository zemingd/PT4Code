N=gets.chomp.to_i
H=gets.chomp.split.map(&:to_i)


diff_ary = (H.size-1).times.map{|i|
  H[i]-H[i+1]
}

max_count = 0
tmp_count = 0
diff_ary.each_with_index do |attr,idx|
  if attr>=0
    tmp_count += 1
    if idx == diff_ary.size-1
      max_count = tmp_count if max_count < tmp_count
    end
  else
    max_count = tmp_count if max_count < tmp_count
    tmp_count = 0
  end
end


puts max_count