n = gets.to_i
rs = []
(0..n-1).each do |i|
  a = gets.chomp.split.map(&:to_s)
  rs << [a[0],a[1].to_i,i+1]
end
rs = rs.sort_by{|a,b,c|b}.reverse.sort_by(&:first)
rs.each do |r|
  puts r[2]
end