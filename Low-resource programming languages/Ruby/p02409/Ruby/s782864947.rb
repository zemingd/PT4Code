gets
ary = [[], [], [], []]

(0..3).each do |i|
  3.times{ |a| ary[i] << [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] }
  ary[i] << "#"*10
end
ARGF.each_line do |line|
  b, f, r, v = line.chomp.split.map(&:to_i)
  ary[b-1][f-1][r-1] += v
end
4.times do |n|
  3.times{|i| puts "\s" + ary[n][i].join("\s")}
  puts ary[n][3]
end