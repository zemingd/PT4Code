a,b,c = STDIN.gets.split(' ').map{|s| s.to_i}

left = a * b
right = ((c-a-b)**2) / 4.0

if left < right
  puts 'Yes'
else
  puts 'No'
end
