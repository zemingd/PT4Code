i = gets.chomp.to_i
s = gets.chomp
r = i / 2
arr = s.scan(/.{1,#{r}}/)
puts arr[0] == arr[1] ? 'Yes' : 'No'