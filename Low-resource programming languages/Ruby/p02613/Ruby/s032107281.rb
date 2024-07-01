n = gets.to_s.to_i
s = Array.new(n){ gets.to_s.chomp }

h = s.tally
h.default = 0

%w(AC WA TLE RE).each do |str|
  puts "#{str} x #{h[str]}"
end