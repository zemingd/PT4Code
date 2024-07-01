p i = gets.chomp.to_i
p s = gets.chomp
p r = i / 2
arr = s.scan(/.{1,#{r}}/)
puts arr[0] == arr[1] ? 'Yes' : 'No'