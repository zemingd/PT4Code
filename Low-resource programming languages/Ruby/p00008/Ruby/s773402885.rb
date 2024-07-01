ARGF.each do |line|
  count = 0
  aaa = (0..9999).each do |i|
    if i.to_s.split("").inject{ |sum,n| sum.to_i+n.to_i }.to_i == line.to_i
      count += 1
    end
  end
 puts count
end