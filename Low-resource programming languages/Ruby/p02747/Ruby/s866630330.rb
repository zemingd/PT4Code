strs = gets.chomp
puts strs.gsub(/hi/,"") == '' ? 'Yes' : 'No'
