gets
ARGF.each_line do |line|
  b, f, r, v = line.split.map(&:to_i)
  3.times.each do |i|
    10.times do |n|
      print n == r && i == f ? r : "0"
    end
    puts "\n" + "#"*20
  end
end