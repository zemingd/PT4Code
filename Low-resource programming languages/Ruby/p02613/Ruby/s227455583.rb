n = gets.to_i
cnt = $stdin.take(n).each(&:chomp!).tally

%w(AC WA TLE RE).each do |type|
  puts "#{type} x #{cnt[type] || 0}"
end
