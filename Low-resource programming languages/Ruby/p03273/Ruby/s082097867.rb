H, W = gets.split.map(&:to_i)
M = H.times.map { gets.chomp.chars }

mm = M.reject { |l| l.all? { |d| d == '.' } }.transpose.reject { |l| l.all? {|d| d == '.' } }.transpose

mm.each do |m|
  puts m.join
end