bs = Array.new(4) { Array.new(3) { Array.new 10, 0 } }
gets.to_i.times do
  b, f, r, v = gets.split.map(&:to_i)
  bs[b-1][f-1][r-1] += v
end
bs.each_with_index do |fs, b|
  fs.each do |rs|
    rs.each do |v|
      print " #{v}"
    end
    puts
  end
  puts ?# * 20 if b < 3
end