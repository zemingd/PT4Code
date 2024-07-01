n = gets.to_i
judgements = n.times.map { gets.chomp }.tally
%w[AC WA TLE RE].each do |key|
  puts "#{key} x #{judgements[key] || 0}"
end
