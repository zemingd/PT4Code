n = gets.to_i
ary = []
n.times { ary << gets.chomp }
cnt = ary.each_with_object(Hash.new(0)) {|e, h| h[e] += 1 }
puts "AC x #{cnt['AC'].to_i}\nWA x #{cnt['WA'].to_i}\nTLE x #{cnt['TLE'].to_i}\nRE x #{cnt['RE'].to_i}"