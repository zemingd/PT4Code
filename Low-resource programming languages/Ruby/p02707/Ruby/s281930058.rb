n = gets.chomp.to_i
as = (gets.chomp.split /\s/).map { |x| x.to_i }

cs = Array.new n, 0
as.each do |a|
  cs[a - 1] += 1
end

cs.each do |c|
  puts c
end
