ary = []
(0..3).each do |i|
  ary[i] = Array.new(3)
  (0..2).each do |j|
    ary[i][j] = Array.new(10, 0)
  end
end

n = STDIN.gets.chomp.to_i
(1..n).each do |i|
  b, f, r, v = STDIN.gets.chomp.split(' ').map(&:to_i)
  ary[b-1][f-1][r-1] += v
end

puts ary.map{|b| b.map{|f| ' ' << f.join(' ') }.join("\n") }.join("\n####################\n")