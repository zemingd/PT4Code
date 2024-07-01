n = STDIN.gets.to_i
a = STDIN.gets.chomp.split

puts a.count == a.uniq.count ? "YES" : "NO"
