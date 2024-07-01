line = gets.split(' ')

ans = line[0].gsub!(/hi/, '')

if ans.empty?
  puts "Yes"
else
  puts "No"
end
