i = input
sarr = i.split ' '
sarr = sarr.reject {|item|  item == '5' }


last = sarr[0] if sarr.len == 1 

puts 'YES' if last == '7'
puts 'NO' if last != '7'

