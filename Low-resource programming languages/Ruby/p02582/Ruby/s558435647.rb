s= gets.strip
puts 3 if s=='RRR'
puts 0 if s=='SSS'
puts 2 if s=='RRS' || s=='SRR'
puts 1 if s=='SSR' || s=='RSR' || s=='RSS' || s=='SRS'