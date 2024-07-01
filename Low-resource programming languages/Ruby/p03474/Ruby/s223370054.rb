a,b=gets.to_i.map(&:to_i)
s=gets.chomp.split('-')
if s.size==2&&s[0].size==a&&s[1].size==b
  puts 'Yes'
else
  puts 'No'
end

