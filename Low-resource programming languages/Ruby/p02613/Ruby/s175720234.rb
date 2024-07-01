N = gets.to_i
SS = N.times.map { gets.chomp }

counts = SS.tally
%w(AC WA TLE RE).each do |j|
  puts "#{j} x #{counts[j] || 0}"
end
