line = gets.split(' ')

ans = line[0].gsub!(/hi/, '')

if ans.nil?
  puts "No"
elsif ans.empty?
  puts "Yes"
else
  puts "No"
end
