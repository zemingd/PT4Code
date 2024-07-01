N = gets.to_i

hash = {'AC'=>0, 'WA'=>0, 'TLE'=>0, 'RE'=>0}

N.times do |i|
  str = gets.chomp!
  hash[str] += 1
end

hash.each do |key, val|
  puts "#{key} x #{val}"
end