n = gets.to_i
a = gets.split.map(&:to_i)

hst = a.each_with_object(Hash.new(0)) { |i,h| h[i] += 1 }
cnt1 = hst.map do |i,j|
  [i, j * (j-1) / 2]
end.to_h
cnt2 = hst.map do |i,j|
  [i, (j-1) * (j-2) / 2]
end.to_h
sum = cnt1.values.inject(0, :+)

a.each do |i|
  puts sum - cnt1[i] + cnt2[i]
end

load __FILE__ unless $stdin.eof?
