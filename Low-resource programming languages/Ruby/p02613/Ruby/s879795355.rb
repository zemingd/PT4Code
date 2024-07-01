N = gets.to_i
S = N.times.map { gets.chomp }

res = S.tally
res.default = 0

label = %w(AC WA TLE RE)

label.each do |name|
  puts [name, res[name]].join(' x ')
end
