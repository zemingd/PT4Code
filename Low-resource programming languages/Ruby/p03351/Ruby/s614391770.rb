a,b,c,d=gets.strip.split.map(&:to_i)
if (a-c).abs<=d || ((a-b).abs<=d && (b-c).abs<=d)
  puts 'Yes'
else 
  puts 'No'
end

