s = gets.chomp
res = s.gsub(/hi/,'')
puts res.size.zero? ? 'Yes' : 'No'