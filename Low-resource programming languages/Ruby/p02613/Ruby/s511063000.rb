gets
s = readlines.map(&:chomp).tally
["AC", "WA", "TLE", "RE"].each do |w|
  puts "#{w} × #{s[w] || 0}"
end